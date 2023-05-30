from django.contrib.auth.models import User
from django.db import models
from django.conf import settings

### Sản phẩm
###########################################################################3
# Loại sản phẩm
class LoaiSP(models.Model):
    sub_category = models.ForeignKey('self', on_delete=models.CASCADE, related_name='sub_categories', null=True, blank=True)
    is_sub = models.BooleanField(default=False)
    name = models.CharField(max_length=200, null=True)
    slug = models.SlugField(max_length=200, null=True)
    def __str__(self):
        return str(self.name)

# Sản phẩm
class SanPham(models.Model):
    category = models.ManyToManyField(LoaiSP, related_name='sanpham')
    TenSP = models.CharField(max_length=30)
    GiaSP = models.IntegerField()
    image = models.ImageField(null=True, blank=True)
    image1 = models.ImageField(null=True, blank=True)
    image2 = models.ImageField(null=True, blank=True)
    MoTa = models.TextField(null=True, blank=True)
    DanhGia = 5
    LuotMua = models.IntegerField(default=0)
    TonKho = models.IntegerField()
    def __str__(self):
        return self.TenSP
    def imageurl(self):
        try:
            url = self.image.url
        except:
            url = ''
        return url
    def imageurl1(self):
        try:
            url = self.image1.url
        except:
            url = ''
        return url
    def imageurl2(self):
        try:
            url = self.image2.url
        except:
            url = ''
        return url


# Comment
class Comment(models.Model):
    sanpham = models.ForeignKey(SanPham, on_delete=models.CASCADE, related_name='comments')
    author = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    body = models.TextField()
    date = models.DateTimeField(auto_now_add=True)


# Đơn hàng
class DonHang(models.Model):
    customer = models.ForeignKey(User, on_delete=models.SET_NULL, null = True, blank = True)
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
    order = models.ForeignKey(DonHang, on_delete=models.SET_NULL, blank = True, null = True)
    soluong = models.IntegerField(default=0, null = True, blank=True)
    date_added = models.DateTimeField(auto_now_add=True)

    @property
    def get_total(self):
        total = self.sp.GiaSP * self.soluong
        return total


### THông tin đơn hàng và người mua
############################################################################################################
class ThongTinNguoiMua(models.Model):
    customer = models.ForeignKey(User, on_delete=models.SET_NULL, null = True, blank = True)
    order = models.ForeignKey(DonHang, on_delete=models.SET_NULL, null = True, blank = True)
    DiaChi= models.CharField(max_length=200, null= True)
    SDT= models.CharField(max_length=11, null= True)
    date_added = models.DateTimeField(auto_now_add=True)




### blog
############################################################################################################
class Blog(models.Model):
    image = models.ImageField(null=True, blank=True)
    TieuDe = models.CharField(max_length=200)
    NoiDung = models.TextField()
    NgayDang = models.DateTimeField(auto_now_add=True)
    Like = models.ManyToManyField(User, related_name='like_blog')

    def imageurl(self):
        try:
            url = self.image.url
        except:
            url = ''
        return url

    def toltal_like(self):
        return self.Like.count()

### Liên hệ
##########################################################################################################################
class LienHe(models.Model):
    NoiDung = models.TextField()


### Tư vấn nội thất
##########################################################################################################################
class TuVanNoiThat(models.Model):
    NoiDung = models.TextField()


### base
##########################################################################################################################
class Base(models.Model):
    SDT = models.CharField(max_length=15, null= True)
    Logo_web = models.ImageField(null=True, blank=True)
    HoTroKhachHang = models.TextField(max_length=500, null= True)
    LienHeChungToi = models.TextField(max_length=500, null= True)
    DiaChi_Khac = models.TextField(max_length=500, null= True)

    def Logo_weburl(self):
        try:
            url = self.Logo_web.url
        except:
            url = ''
        return url

### Home
##########################################################################################################################
class Carousel_Home(models.Model):
    img = models.ImageField(null=True, blank=True)
    img_active = models.ImageField(null=True, blank=True)

    def imgurl(self):
        try:
            url = self.img.url
        except:
            url = ''
        return url
    def img_activeurl(self):
        try:
            url = self.img_active.url
        except:
            url = ''
        return url
class Home(models.Model):
    NoiDung = models.TextField(null= True)
