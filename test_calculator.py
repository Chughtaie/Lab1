from calculator import add, multiply, sub

def test_add():
    assert add(2, 3) == 5
    assert add(2, 2) == 4
    assert add(2, 1) == 3 

def test_multiply(): 
    assert multiply(2,6) == 12 
    assert multiply(2.5,-5) == -12.5 
    assert multiply(3,7) == 21
    assert multiply(3,9) == 27

def test_sub():
    assert sub(2,6) == -4
    assert sub(2.5,-5) == 7.5
    assert sub(3,6) == -3
    assert sub(3,7) == -4
    assert sub(3,9) == -6
    assert sub(5,5) == 0