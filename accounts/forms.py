from django import forms
from django.contrib.auth.forms import UserCreationForm
from accounts.models import User

class UserRegisterForm(UserCreationForm):
    username = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Username"}))
    email = forms.EmailField(widget=forms.EmailInput(attrs={"placeholder":"Email"}))
    dob = forms.DateField(widget=forms.DateInput(attrs={"placeholder":"DOB"}))
    mobile_number = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Mobile Number"}))
    password = forms.CharField(widget=forms.PasswordInput(attrs={"placeholder":"Password"}))
    password2 = forms.CharField(widget=forms.PasswordInput(attrs={"placeholder":"Confirm Password"}))




    class Meta:
        model = User
        fields = ['username', 'email']
