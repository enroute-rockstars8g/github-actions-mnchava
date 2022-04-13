from django.urls import path, include
from rest_framework import routers
from . import views

router = routers.DefaultRouter()
router.register(r"authors", views.AuthorViewSet)
router.register(r"book-author", views.BooksAuthorsViewSet)
router.register(r"customers", views.CustomerViewSet)
router.register(r"reviews", views.ReviewViewSet)
router.register(r"publishers", views.PublisherViewSet)
router.register(r"", views.BookViewSet)

urlpatterns = [
    path("", include(router.urls)),
]
