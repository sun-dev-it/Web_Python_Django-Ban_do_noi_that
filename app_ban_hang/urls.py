from django.contrib.auth import views as auth_views
from django.urls import path
from . import views
# save url path
urlpatterns = [
    path('', views.home),
    path('register/', views.register, name='register'),
    path('login/', auth_views.LoginView.as_view(template_name='login.html'), name='login'),
    path('logout/', auth_views.LogoutView.as_view(template_name='pages/home.html'), name='logout'),
    path('profile/', views.profile, name='profile'),
    path('hoso/', views.hoso, name='hoso'),
    path('giohang/', views.giohang, name='giohang'),
    path('donhang/', views.donhang, name='donhang'),
    path('muahang/', views.muahang, name='muahang'),
    path('search', views.search, name='search'),
    path('sanpham', views.listsanpham, name='sanpham'),
    path('ban', views.ban, name='ban'),
    path('bobanan', views.bobanan, name='bobanan'),
    path('giuong', views.giuong, name='giuong'),
    path('ghe', views.ghe, name='ghe'),
    path('tuke', views.tuke, name='tuke'),
    path('sofa', views.sofa, name='sofa'),
    path('dotrangtri', views.dotrangtri, name='dotrangtri'),
    path('dodungnhabep', views.dodungnhabep, name='dodungnhabep'),
    path('<int:pk>/', views.sanpham, name='sanpham'),

    #############################################################################################
    path('tuvannoithat', views.tuvannoithat, name='tuvannoithat'),   
    path('blog', views.blog, name='blog'),
    path('lienhe', views.lienhe, name='lienhe'),
]