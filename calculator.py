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

        for num in num_list:
            sum_res += num

        return sum_res
