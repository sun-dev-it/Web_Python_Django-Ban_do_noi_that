from django.contrib.auth import views as auth_views
from django.urls import path
from . import views

# save url path
urlpatterns = [
    path('', views.home, name='home'),
    path('register/', views.register, name='register'),
    path('login/', auth_views.LoginView.as_view(template_name='pages/sign_up-login/login.html'), name='login'),
    path('logout/', auth_views.LogoutView.as_view(template_name='pages/home/home.html'), name='logout'),
    path('profile/', views.profile, name='profile'),
    path('hoso/', views.hoso, name='hoso'),
    path('giohang/', views.giohang, name='giohang'),
    path('donhang/', views.donhang, name='donhang'),
    path('muahang/', views.muahang, name='muahang'),
    path('update_item/', views.updateitem, name='update_item'),
    path('search', views.search, name='search'),
    path('category/', views.category, name='category'),

    path('sanpham/', views.listsanpham, name='sanpham'),
    path('sanpham/<int:pk>/', views.sanpham, name='sanpham'),

    path('sanpham', views.listsp, name='listsp'),

    #############################################################################################
    path('tuvannoithat/', views.tuvannoithat, name='tuvannoithat'),   


    path('blog/', views.blog, name='blog'),
    path('blog/<int:pk>/', views.blog_items, name='blog'),

    path('lienhe/', views.lienhe, name='lienhe'),
]