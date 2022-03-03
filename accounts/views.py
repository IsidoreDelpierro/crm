from django.shortcuts import render, redirect
from django.http import HttpResponse

# Create your views here.
def home(request):
    return HttpResponse("home")

def products(request):
    return HttpResponse("Products page")

def customers(request):
    return HttpResponse("Customers page")
