"""
calculator.py - Calculator module for vauxoo-applicant
Author: Erick Birbe <erickcion@gmail.com>
Date: 2015-03-09

Calculator is a python module with useful classes and methods to make diffrent
mathematic operations.
"""


class CalculatorClass(object):
    """
    CalculatorClass makes easy to implement classical mathematic operation into
    your code.
    """

    def sum(self, num_list):
        """
        sum method helps you to make addition operations over several numbers
        with a single call from your code.

        Method Arguments:
        - num_list: A list of integer to sum.

        Return Value:
        The total sum of all the num_list values.
        """

        total = 0
        for val in num_list:
            total += val
        return total
