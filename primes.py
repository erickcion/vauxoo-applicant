"""
primes.py - Handle prime numbers
Author: Erick Birbe <erickcion@gmail.com>
Date: 2015-03-09

A prime number (or a prime) is a natural number greater than 1 that has no
positive divisors other than 1 and itself. This module helps you work with
this type of numbers.
"""


class PrimeClass(object):
    """
    PrimeClass is the main class for work with the prime numbers.
    """

    def is_prime(self, num_int):
        """
        Returns if a number is prime or not.

        Method Arguments:
        - num_int: A integer to determine if it is prime or not

        Return Value:
        True if num_int is prime, or False if not.
        """

        if num_int < 2:
            return False

        for div in range(2, num_int):
            if num_int % div == 0:
                return False
        return True
