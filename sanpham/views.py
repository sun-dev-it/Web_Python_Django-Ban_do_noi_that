from django.shortcuts import render, get_object_or_404
from sanpham.models import SanPham, Comment
from sanpham.forms import CommentForm
from django.http import HttpResponseRedirect
from .models import SanPham

# Create your views here.
def list(request):
    Data = {'SanPham': SanPham.objects.all()}
    return render(request, "sanpham.html", Data)

def sanpham(request, pk):
    sanpham = get_object_or_404(SanPham, pk=pk)
    form = CommentForm()
    if request.method == 'POST':
        form = CommentForm(request.POST, author=request.user, sanpham=sanpham)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect(request.path)
    return render(request, "chitietsanpham.html", {"sanpham": sanpham, "form": form})
