# -*- coding: utf-8 -*-
# @Time    : 2019/2/13 17:54
# @Author  : wjh
# @File    : urls.py
from django.urls import path

from . import views


urlpatterns = [
    path('<int:song_id>.html', views.CommentView, name='comment')
]