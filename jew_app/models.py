# from pyexpat import model
# from django.db import models
# from shortuuid.django_fields import ShortUUIDField
# from django.utils.html import mark_safe
# from accounts.models import User


from django.urls import reverse
from django.contrib.auth.models import User
#
#
# class Customer(models.Model):
#     user = models.OneToOneField(User, on_delete=models.CASCADE, null=True, blank=True)
#     name = models.CharField(max_length=200, null=True)
#     email = models.CharField(max_length=200, null=True)
#

# def user_directory_path(instance, filename):
#     return 'user_{0}/{1}'.format(instance.user.id, filename)
#
# class Category(models.Model):
#     cid = ShortUUIDField(unique=True, length=10, max_length=30, prefix="cat", alphabet="abcdefgh12345")
#     name = models.CharField(max_length=100, unique=True)
#     image = models.ImageField(upload_to='category')
#
#     class Meta:
#         verbose_name_plural = 'Categories'
#
#     def category_image(self):
#         return mark_safe('<img src="%s" width="50" height="50" />' % (self.image.url))
#
#     def __str__(self):
#         return self.name
#
#
# class Vendor(models.Model):
#     vid = ShortUUIDField(unique=True, length=10, max_length=20, prefix="ven", alphabet="abcdefgh12345")
#     name = models.CharField(max_length=100)
#     image = models.ImageField(upload_to='user_directory_path')
#     description = models.TextField(null=True, blank=True)
#     address = models.CharField(max_length=100, default="123 Address")
#     contact = models.CharField(max_length=100, default="+91 90000 000 00")
#     chat_resp_time = models.CharField(max_length=100, default="100")
#     shipping_on_time = models.CharField(max_length=100, default="100")
#     authentic_rating = models.CharField(max_length=100, default="100")
#     days_return = models.CharField(max_length=100, default="100")
#
#
#     user = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)
#
#     class Meta:
#         verbose_name_plural = 'Vendors'
#
#     def vendor_image(self):
#         return mark_safe('<img src="%s" width="50" height="50" />' % (self.image.url))
#
#     def __str__(self):
#         return self.name
#
#
# class Product(models.Model):
#     pid = ShortUUIDField(unique=True, length=10, max_length=20, prefix="cat", alphabet="abcdefgh12345")
#
#     user = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)
#     category = models.ForeignKey(Category, on_delete=models.SET_NULL, null=True)
#
#     name = models.CharField(max_length=100, unique=True)
#     image = models.ImageField(upload_to='user_directory_path')
#     description = models.TextField(null=True, blank=True, default="Product")
#
#     original_price = models.DecimalField(max_digits=999999999, decimal_places=2, default="6999")
#     disc_price = models.DecimalField(max_digits=999999999, decimal_places=2, default="4999")
#
#     specifications = models.TextField(null=True, blank=True)







# class Product(models.Model):
#     name = models.CharField(max_length=200)
#     slug = models.SlugField(max_length=200, unique=True)
#     original_price = models.DecimalField(max_digits=15, decimal_places=2)
#     disc_price = models.DecimalField(max_digits=15, decimal_places=2)
#     image = models.ImageField(upload_to='products/')
#     video = models.FileField(upload_to='videos/')
#     category = models.ForeignKey(Category, on_delete=models.CASCADE)
#     stock = models.IntegerField()
#     available = models.BooleanField(default=True)
#     created = models.DateTimeField(auto_now_add=True)
#     updated = models.DateTimeField(auto_now=True)
#
#
#     class Meta:
#         ordering = ('name',)
#         verbose_name = 'product'
#         verbose_name_plural = 'products'
#
#     #def get_url(self):
#      #   return reverse('jew_app:prodCatdetail', args=[self.category.slug, self.slug])
#
#
#     def __str__(self):
#         return '{}'.format(self.name)
#
#
# class Order(models.Model):
#     customer = models.ForeignKey(Customer, on_delete=models.SET_NULL, blank=True, null=True)
#     date_ordered = models.DateTimeField(auto_now_add=True)
#     complete = models.BooleanField(default=False, null=True, blank=False)
#     transaction_id = models.CharField(max_length=200, null=True)
#
#     def __str__(self):
#         return str(self.id)
#
#
# class OrderItem(models.Model):
#     category = models.ForeignKey(Category, on_delete=models.SET_NULL, blank=True, null=True)
#     product = models.ForeignKey(Product, on_delete=models.SET_NULL, blank=True, null=True)
#     order = models.ForeignKey(Order, on_delete=models.SET_NULL, blank=True, null=True)
#     quantity = models.IntegerField(default=0, null=True, blank=True)
#     date_added = models.DateTimeField(auto_now_add=True)
#
#
# class ShippingAddress(models.Model):
#     customer = models.ForeignKey(Customer, on_delete=models.SET_NULL, blank=True, null=True)
#     order = models.ForeignKey(Order, on_delete=models.SET_NULL, blank=True, null=True)
#     address = models.CharField(max_length=200, null=True)
#     city = models.CharField(max_length=200, null=True)
#     state = models.CharField(max_length=200, null=True)
#     zipcode = models.CharField(max_length=200, null=True)
#     date_added = models.DateTimeField(max_length=200, null=True)
#
#     def __str__(self):
#         return self.address