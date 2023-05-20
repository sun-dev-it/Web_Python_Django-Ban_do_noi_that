from django.shortcuts import render, get_object_or_404
from .forms import *
from .models import *
from django.http import HttpResponseRedirect, JsonResponse
import json

# Create your views here.

## Các danh mục sản phẩm
def MenuSP_categories(request):
    categories = Category.objects.filter(is_sub = False)
    return categories
def MenuSP_active_category(request):
    active_category = request.GET.get('category', '')
    return active_category

## Tổng món hàng có trong giỏ hàng
def TongSPTrongGio(request):
    if request.user.is_authenticated:
        customer = request.user
        order, created = Order.objects.get_or_create(customer=customer, complete=False)
        cartitems = order.get_items
    else:
        order={'order.get_items': 0, 'order.get_money':0}
        cartitems = order['order.get_items']
    return cartitems

## Danh sách sản phẩm đã thêm vào giỏ hàng
def SanPhamTrongGio(request):
    if request.user.is_authenticated:
        customer = request.user
        order, created = Order.objects.get_or_create(customer=customer, complete=False)
        items = order.orderitem_set.all()
    else:
        items=[]
        order={'order.get_items': 0, 'order.get_money':0}
    return  items

## Tổng tiền sản phẩm trong giỏ hàng
def TongTienSPTrongGio(request):
    if request.user.is_authenticated:
        customer = request.user
        order, created = Order.objects.get_or_create(customer=customer, complete=False)
    else:
        order={'order.get_items': 0, 'order.get_money':0}
        return order

###################################################################################################
# sản phẩm
def listsanpham(request):
    data = {
        'cartitems':TongSPTrongGio(request),
        'categories':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, "pages/sanpham/sanpham.html", data)

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
        'sanpham': sanpham, 
        'form': form,
        'cartitems':TongSPTrongGio(request),
        'categories':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request),
        'name': SanPham(request).category
    }
    return render(request, "pages/sanpham/chitietsanpham.html", data)



# Loại sản phẩm
def category(request):
    active_category = MenuSP_active_category(request)
    if active_category:
        sanphams = SanPham.objects.filter(category__slug = active_category)

    data = {
        'sanphams': sanphams, 
        'active_category': active_category,
        'cartitems':TongSPTrongGio(request),
        'categories':MenuSP_categories(request),
        'active_category': active_category,
        'LoaiSP': Category(request)
    }
    return render(request, 'pages/sanpham/category.html', data)

# Home
def home(request):
    data = {
        'cartitems':TongSPTrongGio(request),
        'categories':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/home.html', data)

# Hồ sơ
def hoso(request):
    data = {
        'cartitems':TongSPTrongGio(request),
        'categories':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/profile/hoso.html', data)

# Giỏ hàng
def giohang(request):
    data = {
        'items':SanPhamTrongGio(request), 
        'get_money':TongTienSPTrongGio(request),
        'cartitems':TongSPTrongGio(request),
        'categories':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/profile/giohang.html', data)

# mua hàng
def muahang(request):
    data = {
        'items':SanPhamTrongGio(request), 
        'get_money':TongTienSPTrongGio(request),
        'cartitems':TongSPTrongGio(request),
        'categories':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, "pages/profile/muahang.html", data)


# Đơn hàng
def donhang(request):
    data = {
        'cartitems':TongSPTrongGio(request),
        'categories':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/profile/donhang.html', data)

# Trang cá nhân
def profile(request):
    data = {
        'cartitems':TongSPTrongGio(request),
        'categories':MenuSP_categories(request),
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
    return render(request, 'register.html', data)

# Thêm số lượng sản phẩm
def updateitem(request):
    data = json.loads(request.body)
    sp_id = data['sp_id']
    action = data['action']
    customer = request.user
    sp = SanPham.objects.get(id = sp_id)
    order, created = Order.objects.get_or_create(customer=customer, complete=False)
    orderitem, created = OrderItem.objects.get_or_create(order=order, sp=sp)
    if action == 'add':
        orderitem.soluong +=1
    elif action == 'remove':
        orderitem.soluong -=1
    orderitem.save()
    if orderitem.soluong <=0:
        orderitem.delete()
    return JsonResponse('added', safe=False)


# Thanh tìm kiếm
def search(request):
    if request.method == 'POST':
        searched = request.POST ["searched"]
        keys = SanPham.objects.filter(TenSP__contains = searched)
    data = {
        "searched": search, 
        "keys": keys,
        'cartitems':TongSPTrongGio(request),
        'categories':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/search.html', data)

#####################################################################################################################################
# Tư vấn nội thất
def tuvannoithat(request):
    data = {
        'cartitems':TongSPTrongGio(request),
        'categories':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/tuvannoithat.html', data)

# Blog
def blog(request):
    data = {
        'cartitems':TongSPTrongGio(request),
        'categories':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/blog/blog.html', data)

# Liên hệ
def lienhe(request):
    data = {
        'cartitems':TongSPTrongGio(request),
        'categories':MenuSP_categories(request),
        'active_category': MenuSP_active_category(request)
    }
    return render(request, 'pages/lienhe.html', data)