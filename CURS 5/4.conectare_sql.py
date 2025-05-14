import mysql.connector



cnx = mysql.connector.connect(
    host="127.0.0.1",
    port=3306,
    user="root",
    password="Sergiu2019-@")

cur = cnx.cursor()

cur.execute("CREATE DATABASE PYTHON_CREATED_DB")