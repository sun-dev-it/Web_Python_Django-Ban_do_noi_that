from django.urls import path
from . import views

# save url path
urlpatterns = [
    path('', views.index),
    path('contact/', views.contact, name='contact'),
]