"""Fact module."""


def fact(num):
    return [] if not num else sorted(
            list((x for x in range(1, num+1) if num % x == 0)))
