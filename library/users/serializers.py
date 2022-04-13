from rest_framework_simplejwt.tokens import AccessToken, RefreshToken, TokenError
from django.contrib.auth.models import User, Group
from django.contrib.auth.hashers import make_password
from rest_framework import serializers
from django.utils.translation import gettext as _


class UserSerializer(serializers.ModelSerializer):
    def validate_password(self, value: str) -> str:
        return make_password(value)

    class Meta:
        model = User
        fields = ["url", "username", "password", "email", "groups"]


class GroupSerializer(serializers.ModelSerializer):
    class Meta:
        model = Group
        fields = ["url", "name"]


class RefreshTokenSerializer(serializers.Serializer):
    refresh = serializers.CharField()
    # access = serializers.CharField()

    default_error_messages = {"bad_token": _("Token is invalid or expired")}

    def validate(self, attrs):
        self.refresh_token = attrs["refresh"]
        # self.access_token = attrs['access']
        return attrs

    def save(self, **kwargs):
        try:
            # AccessToken(self.access_token).blacklist()
            RefreshToken(self.refresh_token).blacklist()
        except TokenError:
            self.fail("bad_token")
