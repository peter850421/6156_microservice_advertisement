import pymysql
import os
import yaml
from yaml.loader import SafeLoader

with open('DB_info.yaml', 'r') as f:
    data = yaml.load(f, Loader=SafeLoader)


class provider:

    def __int__(self):
        pass

    @staticmethod
    def _get_connection():

        usr = data["DBUSER"]
        pw = data["DBPW"]
        h = data["DBHOST"]

        conn = pymysql.connect(
            user=usr,
            password=pw,
            host=h,
            cursorclass=pymysql.cursors.DictCursor,
            autocommit=True
        )
        return conn

    @staticmethod
    def get_by_key(key):

        #sql = "SELECT * FROM f22_databases.columbia_students where guid=%s";
        sql = "SELECT b.name,b.description,b.price,b.inventory \
        FROM project.provider a left join project.product b \
        ON a.product_id=b.id WHERE a.user_id = %s"
        conn = provider._get_connection()
        cur = conn.cursor()
        res = cur.execute(sql, args=key)
        result = cur.fetchall()
        return result
