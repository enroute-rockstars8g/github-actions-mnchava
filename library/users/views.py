from django.contrib.auth.models import User, Group
from library.users.serializers import (
    RefreshTokenSerializer,
    UserSerializer,
    GroupSerializer,
)
from rest_framework import viewsets, permissions, exceptions, status
from rest_framework.views import APIView
from rest_framework.generics import GenericAPIView
from rest_framework.response import Response


class UserViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all().order_by("-date_joined")
    serializer_class = UserSerializer
    # permission_classes = [permissions.IsAuthenticated]


class GroupViewSet(viewsets.ModelViewSet):
    queryset = Group.objects.all()
    serializer_class = GroupSerializer
    permission_classes = [permissions.IsAuthenticated]


class LoginView(APIView):
    def post(self, request):
        username = request.data["username"]
        password = request.data["password"]

        user = User.objects.filter(username=username).first()

        if user is None:
            raise exceptions.AuthenticationFailed("User not found!")

        if not user.check_password(password):
            raise exceptions.AuthenticationFailed("Incorrect password!")

        response = Response()
        response.data = {"id": user.id}
        return response


class LogoutView(GenericAPIView):
    serializer_class = RefreshTokenSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def post(self, request, *args):
        sz = self.get_serializer(data=request.data)
        sz.is_valid(raise_exception=True)
        sz.save()
        return Response(status=status.HTTP_204_NO_CONTENT)
