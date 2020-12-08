import mysql.connector as my

def getconn():
    mydb = my.connect(host = 'localhost',
                      user = 'root',
                      passwd = '',
                      database = 'onlinefoodorder')
    return mydb
    


