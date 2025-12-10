from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse

def index(request):
    return HttpResponse('Hello. This site is currently in development please check back later.')

def robots(request):
    return HttpResponse('User-agent: * \nDisallow: /', content_type='text/plain')
