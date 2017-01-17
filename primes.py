"""
 Prime number calculation
"""

class PrimeClass(object):
    """
    Prime number process
    """

    def is_prime(self, num_int):
        """
        Check if a number is prime
        """
        if num_int > 1:

            for i in range(2, num_int):

                if (num_int % i) == 0:
                    return False
                else:
                    return True

        else:
            return False
