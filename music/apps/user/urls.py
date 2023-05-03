# -*- coding: utf-8 -*-
# @Time    : 2019/2/17 17:40
# @Author  : wjh
# @File    : urls.py
from django.urls import path

from . import views

urlpatterns = [
    path('login.html/', views.loginView, name='login'), # 登陆和注册
    path('home/<int:page>.html', views.homeView, name='home'), # 用户中心
    path('logout.html', views.logoutView, name='logout') # 退出用户登陆
]
