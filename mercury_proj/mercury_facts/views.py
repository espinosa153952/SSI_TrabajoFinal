from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse
from django.template import loader
from django.db import connection

#def index(request):
 #   template = loader.get_template('mercury_facts/index.html')
  #  return HttpResponse(template.render())

def fact(request, fact_id):
    fact_id = str(fact_id)
    return HttpResponse('Fact id: ' + fact_id + '. ' + str(get_fact_from_db(fact_id)))

def get_fact_from_db(fact_id):
    with connection.cursor() as cursor:
        cursor.execute('SELECT fact FROM facts WHERE id = ' + fact_id)
        result = cursor.fetchall()
    return result
