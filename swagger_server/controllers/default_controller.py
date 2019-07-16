import connexion
import six
import random
from swagger_server import util


def number_get():  # noqa: E501

    return random.randint(1,101)


def string_get():  # noqa: E501
    """Returns a string

     # noqa: E501


    :rtype: float
    """
    return 'Hey there'
