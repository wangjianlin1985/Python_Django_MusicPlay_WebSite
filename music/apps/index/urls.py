# -*- coding: utf-8 -*-
# @Time    : 2019/2/13 17:56
# @Author  : wjh
# @File    : urls.py
from django.urls import path
from . import views


urlpatterns = [
    path('', views.IndexViews.as_view(), name='index'),
]