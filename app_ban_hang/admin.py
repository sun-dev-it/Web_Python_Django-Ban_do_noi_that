from django.contrib import admin
from .models import *
# Register your models here.

class CommentInline(admin.TabularInline):
    model = Comment

class SanPhamAdmin(admin.ModelAdmin):
    list_display = ['LoaiSP', 'TenSP', 'GiaSP', 'LuotMua', 'TonKho', 'DanhGia']
    list_filter = ['TonKho']
    search_fields = ['TenSP']
    inlines = [CommentInline]
admin.site.register(SanPham)

admin.site.register(Category)
admin.site.register(Order)
admin.site.register(OrderItem)
admin.site.register(ThongTinNguoiMua)



###################################################################################################