from impala.dbapi import connect
#Connection string    
conn = connect(host='xxxxx', 
                    port=21050, 
                    auth_mechanism='PLAIN', 
                    user='xxxxx', 
                    password='xxxxx',
                    database='default',
                    timeout=20,
                    use_ssl=True,
                    ca_cert='/root/project/xxxxx.pem'
                    ) 
cursor = conn.cursor()
cursor.execute('SELECT *  FROM table1 limit 10')
print(cursor.description)  # prints the result set's schema
results = cursor.fetchall()
print(results)