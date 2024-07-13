import json
import psycopg2
import numpy


def calculate_correlation_to_phones(cursor):
    query = 'select * from view_to_correlation_test'
    cursor.execute(query)
    records = cursor.fetchall()

    csl = []
    phl = []
    for r in records:
        if r[1] is not None and r[2] is not None:
            csl.append(r[1])
            phl.append(r[2])

    output = numpy.corrcoef(csl, phl)[0, 1]
    print('Pearson correlation coefficient between cases and phones:', str(output))


def calculate_correlation_to_visitors(cursor):
    query = 'select * from view_cases_visitors'
    cursor.execute(query)
    records = cursor.fetchall()

    csl = []
    phl = []
    for r in records:
        if r[1] is not None and r[2] is not None:
            csl.append(r[1])
            phl.append(r[2])

    output = numpy.corrcoef(csl, phl)[0, 1]
    print('Pearson correlation coefficient between cases and visitors:', str(output))


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
        connection, cursor = connect_to_database()
        calculate_correlation_to_phones(cursor)
        calculate_correlation_to_visitors(cursor)
    except Exception as e:
        print("\nOcorreu um problema:\n" + str(e))


if __name__ == '__main__':
    main()
