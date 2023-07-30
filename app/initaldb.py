import sqlite3

def initialize_database():
    con = sqlite3.connect("soap.db");
    cursor = con.cursor()
    with open("app/setup.sql","r") as create_table:
        run_cmd = create_table.read()
        cursor.executescript(run_cmd)
    con.commit()
    con.close()    