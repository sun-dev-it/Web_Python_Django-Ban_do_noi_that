from django.shortcuts import render

# Create your views here.
# Trang chủ
def index(request):
    return render(request, 'pages/home.html')
