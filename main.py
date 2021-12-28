import psycopg2

username = 'Malinin_R'
password = '1234'
database = 'vaccines'
host = 'localhost'
port = '5432'

query_1 = '''
select * from efficency
'''
query_2 = '''
select name, count(mnf_name) from manufacturer 
inner join vaccines on manufacturer.mnf_id=vaccines.mnf_id 
group by name
'''

query_3 = '''
select country_name,count(name) from vaccines 
inner join origin_country on vaccines.country_id=origin_country.country_id 
group by country_name
	
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)
with conn:
    cur = conn.cursor()

    print('Query 1:')
    cur.execute(query_1)
    for row in cur:
        print(row)

    print('\nQuery 2:')
    cur.execute(query_2)
    for row in cur:
        print(row)

    print('\nQuery 3:')
    cur.execute(query_3)
    for row in cur:
        print(row)