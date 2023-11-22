from django.shortcuts import render, redirect
from django.http import HttpResponse

from django.shortcuts import render, get_object_or_404
from django.core.paginator import Paginator,EmptyPage,InvalidPage

# Create your views here.
def home(request):
    return render(request, 'home.html')

def store_locator(request):
    return render(request, 'nav/store_locator.html')

def aboutus(request):
    return render(request, 'sidebar/aboutus.html')


def awards(request):
    return render(request, 'sidebar/awards.html')


def promotions(request):
    return render(request, 'nav/promotions.html')


def faq(request):
    return render(request, 'sidebar/faq.html')

def joinus(request):
    return render(request, 'sidebar/joinus.html')


def diamond(request):
    return render(request, 'nav/diamond_certificate.html')


def gold_rate(request):
    return render(request, 'nav/gold_rate.html')


def gift_card(request):
    return render(request, 'sidebar/gift_card.html')


def category_sub(request):
    return render(request, 'category/category_sub.html')


def category_list(request):
    #categories = Category.objects.all()
    #context = {'categories':categories}
    return render(request, 'category/category_list.html')

    #categories = Category.objects.all()
    #return render(request, 'category/category_list.html', {'categories': categories})

def product_list(request):
    #category = Category.objects.get(slug=category_list)
    #products = Product.objects.filter(category=category)
    #context = {'products':products}
    return render(request, 'category/product_list.html')


def product_details(request):

    return render(request, 'category/product_details.html')


def add_to_cart(request):
    context = {}
    return render(request, 'cart/add_to_cart.html', context)

def checkout(request):
    context = {}
    return render(request, 'cart/checkout.html', context)
