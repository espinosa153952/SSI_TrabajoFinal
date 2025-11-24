from django.urls import path

from . import views
from django.views.generic import TemplateView

urlpatterns = [
    #path('', views.index, name='index'),
    path('', TemplateView.as_view(template_name='mercury_facts/index.html')),
    path('todo', TemplateView.as_view(template_name='mercury_facts/todo.html')),
    path('<str:fact_id>/', views.fact, name='fact'),
]
