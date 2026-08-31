import pytest

def suma(a,b):
    """Funcion que suma dos numeros"""
    return a+b

def test_suma():
    assert suma(1,2)==3
    assert suma(3,2)==5
    assert suma(3,3)==6

    


