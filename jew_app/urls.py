from django.urls import path
from . import views

app_name = 'jew_app'
urlpatterns = [
    path('', views.home, name='home'),
    path('store-locator/', views.store_locator, name='locator'),
    path('aboutus/', views.aboutus, name='aboutus'),
    path('awards/', views.awards, name='awards'),
    path('promotions/', views.promotions, name='promotions'),
    path('faq/', views.faq, name='faq'),
    path('joinus/', views.joinus, name='joinus'),
    path('diamond/', views.diamond, name='diamond'),
    path('gold/', views.gold_rate, name='gold'),
    path('giftcard/', views.gift_card, name='gift'),

    path('category-sub/', views.category_sub, name='category_sub'),



    path('category-list/', views.category_list, name='category_list'),
    path('product-list/', views.product_list, name='product_list'),
    path('product-details/', views.product_details, name='product_details'),

    #path('product-list/', views.product_list, name='product_list'),
    #path('product-detail/', views.product_details, name='product_details'),

    path('addToCart/', views.add_to_cart, name='addToCart'),
    path('checkout/', views.checkout, name='checkout'),
]