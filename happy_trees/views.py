from django.shortcuts import render
from happy_trees.models import Birthday
from django.http import JsonResponse

def index(request):
    return render(request, 'index.html')

def birthday_list(request):
    birthdays = Birthday.objects.all().values()
    bday_list = list(birthdays)
    return JsonResponse(bday_list, safe=False)
