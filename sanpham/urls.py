from django.urls import path
from . import views

urlpatterns = [
    path('', views.list, name='sanpham'),
    path('<int:pk>/', views.sanpham, name='sanpham'),
]