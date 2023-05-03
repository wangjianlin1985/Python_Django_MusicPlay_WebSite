# -*- coding: utf-8 -*-
# @Time    : 2019/2/13 17:56
# @Author  : wjh
# @File    : urls.py
from django.urls import path

from . import views


urlpatterns = [
    path('<int:song_id>.html', views.PlayView.as_view(), name='play'),
    path('download/<int:song_id>.html', views.DownloadView.as_view(), name='download')
]