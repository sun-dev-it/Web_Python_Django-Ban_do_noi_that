from django.db import models
from django.conf import settings

# Create your models here.

# Sản phẩm
class SanPham(models.Model):
    TenSP = models.CharField(max_length=30)
    LoaiSP = models.CharField(max_length=30)
    GiaSP = models.IntegerField()
    image = models.ImageField(null=True)
    DanhGia = 5
    LuotMua = 0
    TonKho = models.IntegerField()
    def __str__(self):
        return self.TenSP

# Comment
class Comment(models.Model):
    sanpham = models.ForeignKey(SanPham, on_delete=models.CASCADE, related_name='comments')
    author = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    body = models.TextField()
    date = models.DateTimeField(auto_now_add=True)

# home



##########################################################################################################################