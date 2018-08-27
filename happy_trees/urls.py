from django.conf.urls import url
from django.urls import path
from happy_trees import views

urlpatterns = [
    url(r'^$', views.index, name='home' ),
    path('birthday/', views.birthday_list, name='birthday list')
]
