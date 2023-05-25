from .forms import *
from .models import *
from .function import *
from django.http import JsonResponse
import json

## Các danh mục sản phẩm
def MenuSP_categories(request):
    categories = LoaiSP.objects.filter(is_sub = False)
    return categories
def MenuSP_active_category(request):
    active_category = request.GET.get('category', '')
    return active_category

## Tổng món hàng có trong giỏ hàng
def TongSPTrongGio(request):
    if request.user.is_authenticated:
        customer = request.user
        order, created = DonHang.objects.get_or_create(customer=customer, complete=False)
        cartitems = order.get_items
    else:
        order={'get_items': 0, 'get_money':0}
        cartitems = order['get_items']
    return cartitems


## Danh sách sản phẩm đã thêm vào giỏ hàng
def SanPhamTrongGio(request):
    if request.user.is_authenticated:
        customer = request.user
        order, created = DonHang.objects.get_or_create(customer=customer, complete=False)
        items = order.orderitem_set.all()
    else:
        items=[]
        order={'get_items': 0, 'get_money':0}
    return  items

## Tổng tiền sản phẩm trong giỏ hàng
def TongTienSPTrongGio(request):
    if request.user.is_authenticated:
        customer = request.user
        TongTienSPTrongGio, created = DonHang.objects.get_or_create(customer=customer, complete=False)
    else:
        TongTienSPTrongGio={'DonHang.get_items': 0, 'DonHang.get_money':0}
    return TongTienSPTrongGio


###################################################################
# Thêm số lượng sản phẩm
def updateitem(request):
    data = json.loads(request.body)
    sp_id = data['sp_id']
    action = data['action']
    customer = request.user
    sp = SanPham.objects.get(id = sp_id)
    order, created = DonHang.objects.get_or_create(customer=customer, complete=False)
    orderitem, created = OrderItem.objects.get_or_create(order=order, sp=sp)
    if action == 'add':
        orderitem.soluong +=1
    elif action == 'remove':
        orderitem.soluong -=1
    orderitem.save()
    if orderitem.soluong <=0:
        orderitem.delete()
    return JsonResponse('added', safe=False)


def BlogItems(request):
    data = Blog.objects.all()
    return data