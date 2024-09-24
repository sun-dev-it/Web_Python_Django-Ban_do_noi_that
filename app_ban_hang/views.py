from django.shortcuts import render, get_object_or_404
from .function import *
from .models import *

# Create your views here.
# sản phẩm
def listsanpham(request):
    data = {
        'Base': Base.objects.all(),
        'Top5Blog':Blog.objects.all().order_by('-id')[:5],
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, "pages/sanpham/sanpham.html", data)

def listsp(request):
    data = {
        'Base': Base.objects.all(),
        'Top5Blog':Blog.objects.all().order_by('-id')[:5],
        'listsp': SanPham.objects.all(),
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, "pages/sanpham/listsp.html", data)

# chi tiết sản phẩm
def sanpham(request, pk):
    data = {
        'Base': Base.objects.all(),
        'Top5Blog':Blog.objects.all().order_by('-id')[:5],
        'sanpham': get_object_or_404(SanPham, pk=pk),
        'form': Form_Comment_SP(request, pk),
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request),
        #'name': SanPham(request).category
    }
    return render(request, "pages/sanpham/chitietsanpham.html", data)



# Loại sản phẩm
def category(request):
    data = {
        'Base': Base.objects.all(),
        'Top5Blog':Blog.objects.all().order_by('-id')[:5],
        'sanphams': DanhMucSP(request), 
        'active_category': MenuSP_active_category(request),
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'LoaiSP': LoaiSP(request)
    }
    return render(request, 'pages/sanpham/category.html', data)

# Home
def home(request):
    tilesanpham(request)
    data = {
        'Home': Home.objects.all(),
        'Carousel_active': Carousel_Home.objects.all().order_by('-id')[:1],
        'Carousel': Carousel_Home.objects.all(),
        'SP_BanChay': SanPham.objects.all().order_by('-LuotMua')[:9],
        'SP_Moi': SanPham.objects.all().order_by('-id')[:9],
        'Base': Base.objects.all(),
        'TinNoiBat':Blog.objects.all().order_by('-id')[:4],
        'Top5Blog':Blog.objects.all().order_by('-id')[:5],
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/home/home.html', data)

# Hồ sơ
def hoso(request):
    data = {
        'Base': Base.objects.all(),
        'Top5Blog':Blog.objects.all().order_by('-id')[:5],
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/profile/hoso.html', data)

# Giỏ hàng
def giohang(request):
    data = {
        'Base': Base.objects.all(),
        'Top5Blog':Blog.objects.all().order_by('-id')[:5],
        'TongTienSPTrongGio':TongTienSPTrongGio(request),
        'SanPhamTrongGio':SanPhamTrongGio(request), 
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/profile/giohang.html', data)

# mua hàng
def muahang(request):
    data = {
        'order': DonHangMua(request),
        'Base': Base.objects.all(),
        'Top5Blog':Blog.objects.all().order_by('-id')[:5],
        'SanPhamTrongGio':SanPhamTrongGio(request), 
        'TongTienSPTrongGio':TongTienSPTrongGio(request),
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, "pages/profile/muahang.html", data)


# Đơn hàng
def donhang(request):
    data = {
        'items': SPDaMua(request)[0],
        'Base': Base.objects.all(),
        'Top5Blog':Blog.objects.all().order_by('-id')[:5],
        'SanPhamTrongGio':SanPhamTrongGio(request), 
        'TongSPTrongGio':TongSPTrongGio(request),
        'TongTienSPTrongGio':TongTienSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/profile/donhang.html', data)

# Trang cá nhân
def profile(request):
    data = {
        'Base': Base.objects.all(),
        'Top5Blog':Blog.objects.all().order_by('-id')[:5],
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/profile/profile.html', data)


# Tạo tài khoản
def register(request):
    data = {
        'Base': Base.objects.all(),
        'form': Form_DangKi(request)
        }
    return render(request, 'pages/sign_up-login/register.html', data)

# Thanh tìm kiếm
def search(request):
    data = {
        'Base': Base.objects.all(),
        'Top5Blog':Blog.objects.all().order_by('-id')[:5],
        "searched": searched(request), 
        "keys": keys(request),
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/sanpham/search.html', data)

#####################################################################################################################################
# Tư vấn nội thất
def tuvannoithat(request):
    data = {
        'Base': Base.objects.all(),
        'TuVanNoiThat':TuVanNoiThat.objects.all(),
        'Top5Blog':Blog.objects.all().order_by('-id')[:5],
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/tuvannoithat/tuvannoithat.html', data)


### Blog
#####################################################################################################################################
def blog(request):
    data = {
        'Base': Base.objects.all(),
        'Top5Blog':Blog.objects.all().order_by('-id')[:5],
        'Blog':Blog.objects.all().order_by('-id'),
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/blog/blog.html', data)

def blog_items(request, pk):
    data = { 
        'liked': Liked(request, pk),
        'like': Like(request, pk).toltal_like(),
        'Base': Base.objects.all(),
        'blog': get_object_or_404(Blog, pk=pk),
        'Top5Blog':Blog.objects.all().order_by('-id')[:5],
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, "pages/blog/blog_items.html", data)


### Liên hệ
#####################################################################################################################################

def lienhe(request):
    data = {
        'Home': Home.objects.all(),
        'Base': Base.objects.all(),
        'LienHe':LienHe.objects.all(),
        'Top5Blog':Blog.objects.all().order_by('-id')[:5],
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/lienhe/lienhe.html', data)