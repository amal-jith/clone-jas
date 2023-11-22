from django.contrib import admin
from accounts.models import User


class UserAdmin(admin.ModelAdmin):
    list_display = ['username', 'email', 'is_active', 'is_superuser']


admin.site.register(User, UserAdmin)
