from django.shortcuts import render, get_object_or_404
from .forms import *
from .models import *
from django.http import HttpResponseRedirect
# Create your views here.

# Home
def home(request):
    return render(request, 'pages/home.html')

# Hồ sơ
def hoso(request):
    return render(request, 'pages/profile/hoso.html')

# Giỏ hàng
def giohang(request):
    if request.user.is_authenticated:
        customer = request.user.customer
        order, created = Order.objects.get_or_create(customer=customer, complete=False)
        items = order.orderitem_set.all()
    else:
        items=[]
        order={'get_items': 0, 'get_money':0}
    context = {'items': items, 'order': order}
    return render(request, 'pages/profile/giohang.html', context)

# mua hàng
def muahang(request):
    if request.user.is_authenticated:
        customer = request.user.customer
        order, created = Order.objects.get_or_create(customer=customer, complete=False)
        items = order.orderitem_set.all()
    else:
        items=[]
        order={'order.get_items': 0, 'order.get_money':0}
    context = {'items': items, 'order': order}
    return render(request, "pages/profile/muahang.html", context)

    
# Đơn hàng
def donhang(request):
    return render(request, 'pages/profile/donhang.html')

# Trang cá nhân
def profile(request):
    return render(request, 'pages/profile/profile.html')

# Tạo tài khoản
def register(request):
    form = RegistrationForm()
    # Nếu bấm nút đăng kí sẽ đưa dữ liệu vào 
    if request.method == 'POST':
        form = RegistrationForm(request.POST)
        # gọi các hàm ở forms.py nếu hợp lệ
        if form.is_valid():
            form.save()
            return HttpResponseRedirect('/')
    return render(request, 'register.html', {'form': form})

# sản phẩm
def listsanpham(request):
    Data = {'SanPham': SanPham.objects.all()}
    return render(request, "pages/sanpham/allsp.html", Data)
# bàn
def ban(request):
    Data = {'SanPham': SanPham.objects.all()}
    return render(request, "pages/sanpham/ban.html", Data)
# bộ bàn ăn
def bobanan(request):
    Data = {'SanPham': SanPham.objects.all()}
    return render(request, "pages/sanpham/bobanan.html", Data)
# giường
def giuong(request):
    Data = {'SanPham': SanPham.objects.all()}
    return render(request, "pages/sanpham/giuong.html", Data)
# ghế
def ghe(request):
    Data = {'SanPham': SanPham.objects.all()}
    return render(request, "pages/sanpham/ghe.html", Data)
# tủ kệ
def tuke(request):
    Data = {'SanPham': SanPham.objects.all()}
    return render(request, "pages/sanpham/tuke.html", Data)
# sofa
def sofa(request):
    Data = {'SanPham': SanPham.objects.all()}
    return render(request, "pages/sanpham/sofa.html", Data)
# đồ trang trí
def dotrangtri(request):
    Data = {'SanPham': SanPham.objects.all()}
    return render(request, "pages/sanpham/dotrangtri.html", Data)
# đồ dùng nhà bếp
def dodungnhabep(request):
    Data = {'SanPham': SanPham.objects.all()}
    return render(request, "pages/sanpham/dodungnhabep.html", Data)

# chi tiết sản phẩm
def sanpham(request, pk):
    sanpham = get_object_or_404(SanPham, pk=pk)
    form = CommentForm()
    if request.method == 'POST':
        form = CommentForm(request.POST, author=request.user, sanpham=sanpham)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect(request.path)
    return render(request, "pages/sanpham/chitietsanpham.html", {"sanpham": sanpham, "form": form})


# Thanh tìm kiếm
def search(request):
    if request.method == 'POST':
        searched = request.POST ["searched"]
        keys = SanPham.objects.filter(TenSP__contains = searched)
    return render(request, 'pages/search.html', {"searched": search, "keys": keys})

#####################################################################################################################################
# Tư vấn nội thất
def tuvannoithat(request):
    return render(request, 'pages/tuvannoithat.html')

# Blog
def blog(request):
    return render(request, 'pages/blog/blog.html')

# Liên hệ
def lienhe(request):
    return render(request, 'pages/lienhe.html')