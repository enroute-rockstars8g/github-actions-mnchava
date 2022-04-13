from dataclasses import fields
from rest_framework import serializers
from .models import *


class AuthorSerializer(serializers.ModelSerializer):
    class Meta:
        model = Author
        fields = ["id", "name", "last_name"]


class BookSerializer(serializers.ModelSerializer):
    authors = serializers.StringRelatedField(many=True, read_only=True)

    class Meta:
        model = Book
        fields = [
            "id",
            "title",
            "isbn",
            "publish_year",
            "publisher",
            "price",
            "created_at",
            "updated_at",
            "authors",
        ]


class BooksAuthorsSerializer(serializers.ModelSerializer):
    class Meta:
        model = BooksAuthors
        fields = ["id", "book", "author"]


class CustomerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Customer
        fields = ["id", "username", "email"]


class ReviewSerializer(serializers.ModelSerializer):
    class Meta:
        model = Review
        fields = ["id", "rating", "review", "customer", "book"]


class PublisherSerializer(serializers.ModelSerializer):
    class Meta:
        model = Publisher
        fields = ["id", "name"]
