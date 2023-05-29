from django.shortcuts import render, get_object_or_404
from .forms import *
from .models import *
from .function import *
from django.http import HttpResponseRedirect

# Create your views here.
# sản phẩm
def listsanpham(request):
    data = {
        'Top5Blog':Top5Blog(request),
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, "pages/sanpham/sanpham.html", data)

def listsp(request):
    data = {
        'Top5Blog':Top5Blog(request),
        'listsp': SanPham.objects.all(),
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, "pages/sanpham/listsp.html", data)

# chi tiết sản phẩm
def sanpham(request, pk):
    sanpham = get_object_or_404(SanPham, pk=pk)
    form = CommentForm()
    if request.method == 'POST':
        form = CommentForm(request.POST, author=request.user, sanpham=sanpham)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect(request.path)
    data = {
        'Top5Blog':Top5Blog(request),
        'sanpham': sanpham, 
        'form': form,
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request),
        #'name': SanPham(request).category
    }
    return render(request, "pages/sanpham/chitietsanpham.html", data)



# Loại sản phẩm
def category(request):
    active_category = MenuSP_active_category(request)
    if active_category:
        sanphams = SanPham.objects.filter(category__slug = active_category)

    data = {
        'Top5Blog':Top5Blog(request),
        'sanphams': sanphams, 
        'active_category': active_category,
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': active_category,
        'LoaiSP': LoaiSP(request)
    }
    return render(request, 'pages/sanpham/category.html', data)

# Home
def home(request):
    data = {
        'Base': Base.objects.all(),
        'Top5Blog':Top5Blog(request),
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/home/home.html', data)

# Hồ sơ
def hoso(request):
    data = {
        'Top5Blog':Top5Blog(request),
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/profile/hoso.html', data)

# Giỏ hàng
def giohang(request):
    data = {
        'Top5Blog':Top5Blog(request),
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
        'Top5Blog':Top5Blog(request),
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
        'Top5Blog':Top5Blog(request),
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/profile/donhang.html', data)

# Trang cá nhân
def profile(request):
    data = {
        'Top5Blog':Top5Blog(request),
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/profile/profile.html', data)

# Tạo tài khoản

def register(request):
    form = RegistrationForm()
    # Nếu bấm nút đăng kí sẽ đưa dữ liệu vào 
    if request.method == 'POST':
        form = RegistrationForm(request.POST)
        # gọi các hàm ở forms.py nếu hợp lệ
        if form.is_valid():
            form.save()
            return HttpResponseRedirect('/login')
    data = {
        'form': form
    }
    return render(request, 'pages/sign_up-login/register.html', data)

# Thanh tìm kiếm
def search(request):
    if request.method == "POST":
        searched = request.POST ["searched"]
        keys = SanPham.objects.filter(TenSP__contains = searched)
    data = {
        'Top5Blog':Top5Blog(request),
        "searched": searched, 
        "keys": keys,
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/sanpham/search.html', data)

#####################################################################################################################################
# Tư vấn nội thất
def tuvannoithat(request):
    data = {
        'TuVanNoiThat':TuVanNoiThat.objects.all(),
        'Top5Blog':Top5Blog(request),
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/tuvannoithat/tuvannoithat.html', data)


### Blog
#####################################################################################################################################
def blog(request):
    data = {
        'Top5Blog':Top5Blog(request),
        'Blog':BlogItems(request),
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/blog/blog.html', data)

def blog_items(request, pk):
    blog = get_object_or_404(Blog, pk=pk)
    data = {
        'blog': blog,
        'Top5Blog':Top5Blog(request),
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, "pages/blog/blog_items.html", data)


### Liên hệ
#####################################################################################################################################

def lienhe(request):
    data = {
        'LienHe':LienHe.objects.all(),
        'Top5Blog':Top5Blog(request),
        'Blog':BlogItems(request),
        'TongSPTrongGio':TongSPTrongGio(request),
        'DanhMucSP':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/lienhe/lienhe.html', data)