import requests
import json
import psycopg2
from psycopg2.extras import execute_values


def load_n_extract_covid_data(connection, cursor, url):
    query = 'select MAX(concat(to_char("year", \'9999\'), \'-\', TO_CHAR("week", \'99\'))) as last_year_week from covid19'
    cursor.execute(query)
    last_year_week_record = cursor.fetchall()
    max_year_week = last_year_week_record[0][0].split('-')
    max_year = int(max_year_week[0])
    max_week = int(max_year_week[1])

    # "The file is updated weekly." - https://www.ecdc.europa.eu/
    print(f'Última coleta: Ano {max_year} Semana {max_week}')

    response = requests.get(url)
    if response.status_code == 200 and 'application/json' in response.headers.get('Content-Type', ''):

        data = response.json()
        limit = len(data)
        window = 1000
        temp = 0
        count = 0
        load_list = []

        for item in data:
            count += 1

            year = None
            week = None
            if 'year_week' in item:
                year_week = item['year_week'].split('-')
                year = int(year_week[0])
                week = int(year_week[1])

                if year < max_year:
                    continue
                elif year == max_year and week <= max_week:
                    continue

            country = None
            if 'country' in item:
                country = item['country']

            country_code = None
            if 'country_code' in item:
                country_code = item['country_code']

            continent = None
            if 'continent' in item:
                continent = item['continent']

            population = None
            if 'population' in item:
                population = item['population']

            indicator = None
            if 'indicator' in item:
                indicator = item['indicator']

            weekly_count = None
            if 'weekly_count' in item:
                weekly_count = item['weekly_count']

            rate_14_day = None
            if 'rate_14_day' in item:
                rate_14_day = item['rate_14_day']

            cumulative_count = None
            if 'cumulative_count' in item:
                cumulative_count = item['cumulative_count']

            source = None
            if 'source' in item:
                source = item['source']

            load_list.append((country, country_code, continent, population, indicator, weekly_count, str(year), str(week), rate_14_day, cumulative_count, source))

            temp += 1
            if temp == window or count == limit:
                query = "INSERT INTO covid19 (country, country_code, continent, population, indicator, weekly_count, year, week, rate_14_day, cumulative_count, source) VALUES %s"
                execute_values(cursor, query, load_list)

                temp = 0
                load_list.clear()

                print(count, limit)

        connection.commit()
        print('Extração finalizada.')
    else:
        raise Exception('Falha na consulta do arquivo JSON de dados da doença Covid-19.')


def connect_to_database(database='files/database.json'):
    file = open(database)
    data = json.load(file)

    conn = psycopg2.connect(
        host=data['host'],
        database=data['database'],
        user=data['user'],
        password=data['password']
    )

    file.close()

    return conn, conn.cursor()


def main():
    try:
        covid_19_url = 'https://opendata.ecdc.europa.eu/covid19/nationalcasedeath/json/'

        connection, cursor = connect_to_database()
        load_n_extract_covid_data(connection, cursor, covid_19_url)
    except Exception as e:
        print("\nOcorreu um problema:\n" + str(e))


if __name__ == '__main__':
    main()
