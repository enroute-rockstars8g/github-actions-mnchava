from django.db import models

class Author(models.Model):
	name = models.CharField(max_length = 128)
	last_name = models.CharField(max_length = 128, null = True)

class Publisher(models.Model):
	name = models.CharField(max_length = 256)

class Book(models.Model):
	title = models.CharField(max_length = 256)
	isbn = models.CharField(max_length = 13, default='0000000000000')
	publish_year = models.SmallIntegerField(default=2000)
	publisher = models.ForeignKey(Publisher, on_delete = models.DO_NOTHING, default = "0")
	price = models.DecimalField(max_digits = 6, decimal_places = 2)
	created_at = models.DateTimeField(auto_now_add = True, null = True)
	updated_at = models.DateTimeField(auto_now = True,null = True)
	authors = models.ManyToManyField(Author, through='BooksAuthors')

class BooksAuthors(models.Model):
	book = models.ForeignKey(Book, related_name = 'BookWithAuthors', on_delete = models.DO_NOTHING)
	author = models.ForeignKey(Author, related_name='AuthorWithBooks', on_delete = models.DO_NOTHING)

class Customer(models.Model):
	username = models.CharField(max_length = 24, unique = True)
	email = models.CharField(max_length = 254, unique = True)

class Review(models.Model):
	rating = models.PositiveSmallIntegerField()
	review = models.CharField(max_length = 1024)
	customer = models.ForeignKey(Customer, on_delete = models.DO_NOTHING)
	book = models.ForeignKey(Book, on_delete = models.DO_NOTHING)
