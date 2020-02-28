"""Unit tests for fact module."""


import fact


def test_fact_0():
    assert fact.fact(0) == []


def test_fact_1():
    assert fact.fact(1) == [1]


def test_fact_2():
    assert fact.fact(2) == [1, 2]


def test_fact_3():
    assert fact.fact(3) == [1, 3]


def test_fact_4():
    assert fact.fact(4) == [1, 2, 4]


def test_fact_5():
    assert fact.fact(5) == [1, 5]


def test_fact_6():
    assert fact.fact(6) == [1, 2, 3, 6]


def test_fact_12():
    assert fact.fact(12) == [1, 2, 3, 4, 6, 12]


def test_fact_36():
    assert fact.fact(36) == [1, 2, 3, 4, 6, 9, 12, 18, 36]


def test_fact_big():
    assert fact.fact(33550336) == [
        1,
        2,
        4,
        8,
        16,
        32,
        64,
        128,
        256,
        512,
        1024,
        2048,
        4096,
        8191,
        16382,
        32764,
        65528,
        131056,
        262112,
        524224,
        1048448,
        2096896,
        4193792,
        8387584,
        16775168,
        33550336
    ]

