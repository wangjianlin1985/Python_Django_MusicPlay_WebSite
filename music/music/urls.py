"""music URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.urls import path,include
from django.contrib import admin

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('index.urls')),
    path('comment/', include('comment.urls')),
    path('play/', include('play.urls')),
    path('search/', include('search.urls')),
    path('', include('ranking.urls')),
    path('user/', include('user.urls')),
]

# 设置404，500状态码
# from index import views
# handler404 = views.page_not_found
# handler500 = views.page_not_found