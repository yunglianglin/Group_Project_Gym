from django.shortcuts import render
import datetime
from .models import Words
from django.core import serializers
from django.shortcuts import render
import pandas as pd 
import numpy as np
from pymongo import MongoClient
import re
import bson
from datetime import timedelta

# Create your views here.



client = MongoClient('mongodb://localhost:27017')
db = client.project
connection = db.googlecopy


def index(request):
	return render(request,'index.html',{})


def getResult(request):
    brand = request.GET.get('brand')
    period_word = request.GET.get('time')
    combrand = request.GET.get('combrand')
#    period = 180
    if period_word =="近半年":
        period = 180
    elif period_word =="近一週":
        period = 7
    elif period_word =="近一個月":
        period = 30
    elif period_word =="近三個月":
        period = 60
    elif period_word =="近一年":
        period = 360
    elif period_word =="近兩年":
        period = 720
        
    global connection
    
    if connection:
        #主品牌圓餅圖
        expression = "'.*" + brand + ".*'"
        brand_regx = re.compile(expression, re.IGNORECASE)
        world_gym_positive = connection.find({"store_name": brand_regx,"y_pred":2,"date":{"$lte":period}}).count()
        world_gym_n = connection.find({"store_name": brand_regx,"y_pred":1,"date":{"$lte":period}}).count()
        world_gym_negative = connection.find({"store_name": brand_regx,"y_pred":0,"date":{"$lte":period}}).count()
        
        #主品牌評論內容
        
        #負面
        world_gym_negative_comment = connection.find({"store_name": brand_regx,"y_pred":0,"date":{"$lte":period}}).limit(5)
        
        brand_comment_na = []
        brand_date_na = []
        for data in world_gym_negative_comment:
            brand_comment_na.append(data["comment"])
            Date = datetime.datetime.now().date()
            EndDate = Date + timedelta(days=data["date"])
            brand_date_na.append(EndDate)
        rows_na = zip(brand_comment_na, brand_date_na)   
        
        #正面
        world_gym_positive_comment = connection.find({"store_name": brand_regx,"y_pred":1,"date":{"$lte":period}}).limit(5)
        
        brand_comment_p = []
        brand_date_p = []
        for data in world_gym_positive_comment:
            brand_comment_p.append(data["comment"])
            Date = datetime.datetime.now().date()
            EndDate = Date + timedelta(days=data["date"])
            brand_date_p.append(EndDate)
        rows_p = zip(brand_comment_p, brand_date_p)   
        
        #中立
        world_gym_ne_comment = connection.find({"store_name": brand_regx,"y_pred":2,"date":{"$lte":period}}).limit(5)
        
        brand_comment_ne = []
        brand_date_ne = []
        for data in world_gym_ne_comment:
            brand_comment_ne.append(data["comment"])
            Date = datetime.datetime.now().date()
            EndDate = Date + timedelta(days=data["date"])
            brand_date_ne.append(EndDate)
        rows_ne = zip(brand_comment_ne, brand_date_ne)  
        
        
            
        #副主品牌圓餅圖
        expression2 = "'.*" + combrand + ".*'"
        combrand_regx = re.compile(expression2, re.IGNORECASE)
        combrand_positive = connection.find({"store_name": combrand_regx,"y_pred":2,"date":{"$lte":period}}).count()
        combrand_n = connection.find({"store_name": combrand_regx,"y_pred":1,"date":{"$lte":period}}).count()
        combrand_negative = connection.find({"store_name": combrand_regx,"y_pred":0,"date":{"$lte":period}}).count()
        
        #次品牌評論內容
        
        #負面
        combrand_negative_comment = connection.find({"store_name": combrand_regx,"y_pred":0,"date":{"$lte":period}}).limit(5)
        
        combrand_comment_na = []
        combrand_date_na = []
        for data in combrand_negative_comment:
            combrand_comment_na.append(data["comment"])
            Date = datetime.datetime.now().date()
            EndDate = Date + timedelta(days=data["date"])
            combrand_date_na.append(EndDate)
        combrand_rows_na = zip(combrand_comment_na, combrand_date_na)   
        
        #正面
        combrand_positive_comment = connection.find({"store_name": combrand_regx,"y_pred":1,"date":{"$lte":period}}).limit(5)
        
        combrand_comment_p = []
        combrand_date_p = []
        for data in combrand_positive_comment:
            combrand_comment_p.append(data["comment"])
            Date = datetime.datetime.now().date()
            EndDate = Date + timedelta(days=data["date"])
            combrand_date_p.append(EndDate)
        combrand_rows_p = zip(combrand_comment_p, combrand_date_p)   
        
        #中立
        combrand_ne_comment = connection.find({"store_name": combrand_regx,"y_pred":2,"date":{"$lte":period}}).limit(5)
        
        combrand_comment_ne = []
        combrand_date_ne = []
        for data in combrand_ne_comment:
            combrand_comment_ne.append(data["comment"])
            Date = datetime.datetime.now().date()
            EndDate = Date + timedelta(days=data["date"])
            combrand_date_ne.append(EndDate)
        combrand_rows_ne = zip(combrand_comment_ne, combrand_date_ne)  
    return render(request,'index.html', locals())



def totalBuzz(request):
    global connection
    period_0 = 7
    period_1 = 30
    period_2 = 60
    period_3 = 90
    period_4 = 120
    period_5 = 150
    period_6 = 180
    period_7 = 210
    period_8 = 240
    period_9 = 270
    period_10 = 300
    period_11 = 330
    period_count1 = connection.find({"date":{"$gt":period_0,"$lte":period_1}}).count()
    period_count2 = connection.find({"date":{"$gt":period_1,"$lte":period_2}}).count()
    period_count3 = connection.find({"date":{"$gt":period_2,"$lte":period_3}}).count()
    period_count4 = connection.find({"date":{"$gt":period_3,"$lte":period_4}}).count()
    period_count5 = connection.find({"date":{"$gt":period_4,"$lte":period_5}}).count()
    period_count6 = connection.find({"date":{"$gt":period_5,"$lte":period_6}}).count()
    period_count7 = connection.find({"date":{"$gt":period_6,"$lte":period_7}}).count()
    period_count8 = connection.find({"date":{"$gt":period_7,"$lte":period_8}}).count()
    period_count9 = connection.find({"date":{"$gt":period_8,"$lte":period_9}}).count()
    period_count10 = connection.find({"date":{"$gt":period_9,"$lte":period_10}}).count()
    period_count11 = connection.find({"date":{"$gt":period_10,"$lte":period_11}}).count()
    return render(request,'index.html', locals())

def gyms(request):
	return render (request, 'base.html', {})
	
def WG(request):
	return render(request, 'WG_LDA.html',{})
	
def EX(request):
	return render(request, 'EX_LDA.html',{})

def TF(request):
	return render(request, 'TF_LDA.html',{})

def GF(request):
	return render(request, 'GF_LDA.html',{})

def WC(request):
	from_date = request.GET.get('from_date')
	to_date = request.GET.get('to_date')
	words = Words.objects.filter(pub_date__range=(from_date, to_date))
	contexts = {'words': words, 
						'from_date': from_date,
						'to_date': to_date}
	return render(request, 'wordcloud.html',contexts)
	
def display_report(request):
	print('hello')
	return render(request, 'report.html', {})
	
	
