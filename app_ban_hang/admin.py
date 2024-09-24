from django.contrib import admin
from .models import *
# Register your models here.

class CommentInline(admin.TabularInline):
    model = Comment

class CommentAdmin(admin.ModelAdmin):
    list_display = ['author', 'body', 'check', 'date']
    list_filter = ['check']

class SanPhamAdmin(admin.ModelAdmin):
    list_display = ['TenSP', 'GiaSP', 'LuotMua', 'TonKho', 'DanhGia']
    list_filter = ['category']
    search_fields = ['TenSP']
    inlines = [CommentInline]

class DonHangAdmin(admin.ModelAdmin):
    list_display = ['customer', 'complete', 'date_order']
    list_filter = ['customer']


class BlogAdmin(admin.ModelAdmin):
    list_display = ['TieuDe', 'NgayDang']
    search_fields = ['TieuDe']
    list_filter = ['NgayDang']

## Các comment sản phẩm
admin.site.register(Comment, CommentAdmin)

## Các sản phẩm
admin.site.register(SanPham, SanPhamAdmin)

## Thêm danh mục sản phẩm
admin.site.register(LoaiSP)

## Các đơn hàng khách hàng đã thêm vào giỏ hoặc đã mua
admin.site.register(DonHang, DonHangAdmin)

## Các bài blog
admin.site.register(Blog, BlogAdmin)

## Nội dung trang liên hệ
admin.site.register(LienHe)

## Nội dung trang tư vấn nội thất
admin.site.register(TuVanNoiThat)

## NỘi dung trang home
admin.site.register(Home)


## Các sản phẩm được thêm vào giỏ hàng
# admin.site.register(OrderItem)


## Ảnh động trên trang home
# admin.site.register(Carousel_Home)


## Thay đổi logo web, số điện thoại ...
#admin.site.register(Base)


## THông tin người mua (đang phát triển)
# admin.site.register(ThongTinNguoiMua)

###################################################################################################