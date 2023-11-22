from django.contrib import auth, messages
from django.shortcuts import render, redirect, get_object_or_404
from accounts.forms import UserRegisterForm
from django.contrib.auth import login, authenticate, logout
from django.conf import settings

User = settings.AUTH_USER_MODEL



# Create your views here.




def register(request):

    if request.method == "POST":
        form = UserRegisterForm(request.POST or None)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get("username")
            messages.success(request, f"hey {username}, account created successfully")
            new_user = authenticate(username=form.cleaned_data['email'],
                                    password=form.cleaned_data['password1'])
            login(request, new_user)
            return redirect("jew_app:home")
    else:
        print("user can't be registered")

    form = UserRegisterForm()

    context = {
        'form': form
    }
    return render(request, 'user/register.html',  context)


def user_login(request):
    if request.user.is_authenticated:
        messages.warning(request, f"Hey you are already logged in")
        return redirect("accounts:profile")

    if request.method == "POST":
        email = request.POST.get("email")
        password = request.POST.get("password")

        try:
            user = User.objects.get(email=email)
            user = authenticate(request, email=email, password=password)

            if user is not None:
                login(request, user)
                messages.success(request, "You are logged in")
                return redirect("jew_app:home")
            else:
                messages.warning(request, "User Does Not Exist. Create an account")

        except:
            messages.warning(request, f"User with {email} does not exist")





    context = {

    }

    return render(request, 'user/login.html', context)


def user_profile(request):
    return render(request, 'user/profile.html')

def user_logout(request):
    logout(request)
    messages.success(request, "You logged out")
    return redirect('accounts:register')