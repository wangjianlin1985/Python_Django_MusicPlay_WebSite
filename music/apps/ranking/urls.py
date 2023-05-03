# -*- coding: utf-8 -*-
# @Time    : 2019/2/13 17:57
# @Author  : wjh
# @File    : urls.py
from django.urls import path

from . import views


urlpatterns = [
    path('ranking/', views.RankingView.as_view(), name='ranking')
]