from django.shortcuts import render
from .models import Post
from django.views.generic import ListView, DetailView

# Create your views here.
class PostListViews(ListView):
    queryset = Post.objects.all().order_by("-date")
    template_name = 'blog/blog.html'
    context_object_name = 'Post'
    paginate_by = 2 # 1 tráng chứa 10 bài viết

def post(request, id):
    post = Post.objects.get(id=id)
    return render(request, 'blog/post.html', {'post': post})

class PostDetailView(DetailView):
    model = Post
    

