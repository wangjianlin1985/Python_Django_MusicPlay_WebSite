# -*- coding: utf-8 -*-
# @Time    : 2019/2/13 20:58
# @Author  : wjh
# @File    : urls.py
from django.urls import path

from . import views


urlpatterns = [
    path('<int:page>.html', views.SearchView, name='search')
]



