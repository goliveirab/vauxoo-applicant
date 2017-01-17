"""
Calculator
"""


class CalculatorClass(object):
    """
    Numbers calculator
    """

    def sum(self, num_list):
        """
        Calculate numbers sum
        """
        sum_res = 0

        for i in num_list:
            sum_res += i

        return sum_res
