import pymysql
import os
import yaml
from yaml.loader import SafeLoader
import datetime
import sys,os

with open('./DB_info.yaml', 'r') as f:
    data = yaml.load(f, Loader=SafeLoader)


class advertisement:

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
    def insert_by_key(product_id, customer_email, ad_type, end_date):

        #sql = "SELECT * FROM f22_databases.columbia_students where guid=%s";
        sql = "INSERT INTO project.new_advertisement(product_id, customer_email, ad_type, end_date) VALUES (%s ,%s, %s, %s)"
        conn = advertisement._get_connection()
        cur = conn.cursor()
        res = cur.execute(sql, (product_id, customer_email, ad_type, end_date))
        return res
