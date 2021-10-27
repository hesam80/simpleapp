from datetime import datetime
import os
import pytz
import requests
import math
API_KEY = '92ef7fe4196f1fe341c896bb105291b3'
API_URL = 'http://api.openweathermap.org/data/2.5/weather?q={}&mode=json&units=metric&appid={}'

def query_api(city):
    try:
        #print(API_URL.format(city, API_KEY))
        data = requests.get(API_URL.format(city, API_KEY)).json()
    except Exception as exc:
        print(exc)
        data = None
    print (data)
    return data
#api.openweathermap.org/data/2.5/find?lat=55.5&lon=37.5&cnt=10&appid=API_KEY
query_api('tehran')