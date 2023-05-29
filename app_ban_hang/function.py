from django.core.exceptions import ObjectDoesNotExist
from django.shortcuts import get_object_or_404
from django.http import HttpResponseRedirect
from django.contrib.auth.models import User
from django.http import JsonResponse
from .models import Comment
from django import forms
from .function import *
from .models import *
import json
import re

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



### Form đăng kí tài khoản
###################################################################################################################
class RegistrationForm(forms.Form):
    username = forms.CharField(label='Tài khoản', max_length=30)
    email = forms.EmailField(label='Email')
    password1 = forms.CharField(label='Mật khẩu', widget=forms.PasswordInput())
    password2 = forms.CharField(label='Nhập lại mật khẩu', widget=forms.PasswordInput())

    # Kiểm tra mật khẩu nhập lại có đúng không
    def clean_password2(self):
        if 'password1' in self.cleaned_data:
            password1 = self.cleaned_data['password1']
            password2 = self.cleaned_data['password2']
            if password1 == password2 and password1:
                return password2
        raise forms.ValidationError("Mật khẩu không hợp lệ")
        
    # Kiểm tra user name
    def clean_username(self):
        username = self.cleaned_data['username']
        if not re.search(r'^\w+$', username):
            raise forms.ValidationError("Tên tài khoản không được có kí tự đặt biệt")
        try:
            User.objects.get(username=username)
        except ObjectDoesNotExist:
            return username
        raise forms.ValidationError("Tài khoản đã tồn tại")

    # Tạo user
    def save(self):
        User.objects.create_user(username=self.cleaned_data['username'], email=self.cleaned_data['email'], password=self.cleaned_data['password1'])

# Comment
class CommentForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        self.author = kwargs.pop('author', None)
        self.sanpham = kwargs.pop('sanpham', None)
        super().__init__(*args, **kwargs)
    def save(self, commit=True):
        comment = super().save(commit=False)
        comment.author = self.author
        comment.sanpham = self.sanpham
        comment.save()
    class Meta:
        model = Comment
        fields = ["body"]

### Search
###################################################################################################################
def searched(request):
    if request.method == "POST":
        searched = request.POST ["searched"]
    return searched
def keys(request):
    if request.method == "POST":
        searched = request.POST ["searched"]
        keys = SanPham.objects.filter(TenSP__contains = searched)
    return keys


### Đăng kí
###################################################################################################################
def Form_DangKi(request):
    form = RegistrationForm()
    # Nếu bấm nút đăng kí sẽ đưa dữ liệu vào 
    if request.method == 'POST':
        form = RegistrationForm(request.POST)
        # gọi các hàm ở forms.py nếu hợp lệ
        if form.is_valid():
            form.save()
            return HttpResponseRedirect('/login')
    return form


### Form comment sản phẩm
###################################################################################################################
def Form_Comment_SP(request, pk):
    sanpham = get_object_or_404(SanPham, pk=pk)
    form = CommentForm()
    if request.method == 'POST':
        form = CommentForm(request.POST, author=request.user, sanpham=sanpham)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect(request.path)
    return form



def DanhMucSP(request):
    active_category = MenuSP_active_category(request)
    if active_category:
        sanpham = SanPham.objects.filter(category__slug = active_category)
    return sanpham