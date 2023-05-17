from django.contrib.auth.models import User
from django.db import models
from django.conf import settings

# Create your models here.

# Sản phẩm
class SanPham(models.Model):
    TenSP = models.CharField(max_length=30)
    GiaSP = models.IntegerField()
    LoaiSP = models.IntegerField()
    image = models.ImageField(null=True, blank=True)
    DanhGia = 5
    LuotMua = 0
    TonKho = models.IntegerField()
    def __str__(self):
        return self.TenSP
    def imageurl(self):
        try:
            url = self.image.url
        except:
            url = ''
        return url

# Comment
class Comment(models.Model):
    sanpham = models.ForeignKey(SanPham, on_delete=models.CASCADE, related_name='comments')
    author = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    body = models.TextField()
    date = models.DateTimeField(auto_now_add=True)


class Customer(models.Model):
    user = models.OneToOneField(User, on_delete=models.SET_NULL, null = True, blank = False)
    name = models.CharField(max_length=200, null=True)
    email = models.CharField(max_length=200, null=True)

    def __str__(self):
        return self.name



class Order(models.Model):
    customer = models.ForeignKey(Customer, on_delete=models.SET_NULL, null = True, blank = True)
    date_order = models.DateTimeField(auto_now_add=True)
    complete = models.BooleanField(default=False, null=True, blank = False)
    sp_damua = models.CharField(max_length=200, null=True)

    def __str__(self):
        return str(self.id)
    
    @property
    def get_items(self):
        orderitems = self.orderitem_set.all()
        count = sum([item.soluong for item in orderitems])
        return count

    @property
    def get_money(self):
        orderitems = self.orderitem_set.all()
        count = sum([item.get_total for item in orderitems])
        return count

class OrderItem(models.Model):
    sp = models.ForeignKey(SanPham, on_delete=models.SET_NULL, blank = True,  null = True)
    order = models.ForeignKey(Order, on_delete=models.SET_NULL, blank = True, null = True)
    soluong = models.IntegerField(default=0, null = True, blank=True)
    date_added = models.DateTimeField(auto_now_add=True)

    @property
    def get_total(self):
        total = self.sp.GiaSP * self.soluong
        return total

class ThongTinNguoiMua(models.Model):
    customer = models.ForeignKey(Customer, on_delete=models.SET_NULL, null = True, blank = True)
    order = models.ForeignKey(Order, on_delete=models.SET_NULL, null = True, blank = True)
    DiaChi= models.CharField(max_length=200, null= True)
    SDT= models.CharField(max_length=11, null= True)
    date_added = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.DiaChi

##########################################################################################################################