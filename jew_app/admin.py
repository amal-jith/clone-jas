from django.contrib import admin

from .models import *


#from .models import Category, Product

# Register your models here.
# class CategoryAdmin(admin.ModelAdmin):
#    list_display = [ 'name', 'slug']
#    prepopulated_fields = {'slug':('name',)}
# admin.site.register(Category, CategoryAdmin)
#
# class ProductAdmin(admin.ModelAdmin):
#     list_display = ['name','original_price', 'disc_price', 'stock', 'available', 'created', 'updated']
#     list_editable = ['disc_price', 'stock', 'available']
#     prepopulated_fields = {'slug':('name',)}
#     list_per_page = 20
# admin.site.register(Product,ProductAdmin)


# admin.site.register(Customer)
# admin.site.register(Category)
# admin.site.register(Product)
# admin.site.register(Order)
# admin.site.register(OrderItem)
# admin.site.register(ShippingAddress)
