python -m venv srodowisko 

Scripts\activate

 python -m pip install Django 

django-admin startproject strona3p 

python manage.py runserver 

python manage.py startapp appmonday 

  path('appmonday/', include('appmonday.urls')), 

'appmonday.apps.AppmondayConfig', 

from django.urls import path 
from . import views 
 
urlpatterns = [ 
    path('', views.index, name='index'), 
] 

from django.shortcuts import render 
 
def index(request): 
    return render(request, 'appmonday/index.html') 
