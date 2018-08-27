from django.db import models
from django.db.models import *

class Birthday(models.Model):
    """ models a birthday kinda deal
        author: David Paul
    """
    date = models.CharField(blank=True, max_length=15, default='12-12-2012')
    name = models.CharField(blank=True, max_length=25, default='name')
    greeting = models.CharField(blank=True, max_length=25, default="hola")

    def __str__(self):
        return f'Name: {self.name} Birthday: {self.date} Greeting: {self.greeting}'

# TODO: make a birthday model

# date:
# name:
# greeting:

# makemigrations
# migrate
# in dbbrowser make 3 instances of birthdays

# make a url
