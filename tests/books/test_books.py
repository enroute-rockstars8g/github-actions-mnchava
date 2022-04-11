from numbers import Number
import string
import pytest
from library.books.models import *

test_author_data = [
	("Isaac", "Asimov"),
	("Jorge L.", "Borges")
]

@pytest.mark.django_db
@pytest.mark.parametrize("name, last_name", test_author_data)
def test_author(name, last_name):
	author = Author.objects.create(name = name, last_name = last_name)
	print(author.name, author.last_name)
	assert author.name == name
	assert author.last_name == last_name
	assert Author.objects.all().count() > 0

test_book_data = [
	('Contact', '0000000000000', 1990, 13.20),
	('Foundation', '0000000000001', 1992, 10),
	('1984', '0000000000002', 1994, 130),
]

@pytest.mark.django_db
@pytest.mark.parametrize("title, isbn, publish_year, price", test_book_data)
def test_book(title, isbn, publish_year, price):
	publisher = Publisher.objects.create(name = 'publisher')
	book = Book.objects.create(title = title, isbn = isbn, publish_year = publish_year, publisher = publisher, price = price)

	assert type(book.isbn) == type('test')
	print(book.title, publisher.name)
	assert book.publisher.name == publisher.name
	assert len(book.isbn) == 13

@pytest.mark.django_db
def test_publisher():
	publisher = Publisher.objects.create(name = 'Random House')

	assert len(publisher.name) > 0