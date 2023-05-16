from django.shortcuts import render, get_object_or_404
from .forms import RegistrationForm, CommentForm
from .models import SanPham
from django.http import HttpResponseRedirect
# Create your views here.

# Home
def home(request):
    return render(request, 'pages/home.html')


# Trang cá nhân
def profile(request):
    return render(request, 'profile.html')

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

# Trang sản phẩm
def listsanpham(request):
    Data = {'SanPham': SanPham.objects.all()}
    return render(request, "pages/sanpham.html", Data)

# Chi tiết sản phẩm
def sanpham(request, pk):
    sanpham = get_object_or_404(SanPham, pk=pk)
    form = CommentForm()
    if request.method == 'POST':
        form = CommentForm(request.POST, author=request.user, sanpham=sanpham)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect(request.path)
    return render(request, "pages/chitietsanpham.html", {"sanpham": sanpham, "form": form})

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
    return render(request, 'pages/blog.html')

# Liên hệ
def lienhe(request):
    return render(request, 'pages/lienhe.html')