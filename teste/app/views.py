from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render_to_response
from app.models import *

def index(request):
    return HttpResponse('vai filhao')


