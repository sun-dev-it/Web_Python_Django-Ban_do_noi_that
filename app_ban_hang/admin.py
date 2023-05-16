from django.contrib import admin
from .models import SanPham, Comment
# Register your models here.

class CommentInline(admin.TabularInline):
    model = Comment

class SanPhamAdmin(admin.ModelAdmin):
    list_display = ['TenSP', 'LoaiSP', 'GiaSP', 'LuotMua', 'TonKho', 'DanhGia']
    list_filter = ['TonKho']
    search_fields = ['TenSP']
    inlines = [CommentInline]
admin.site.register(SanPham, SanPhamAdmin)





###################################################################################################