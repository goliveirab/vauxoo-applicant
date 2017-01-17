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

        nums = abs(int(num_int))

        if nums < 2:
            return False

        if nums == 2:
            return True

        if not nums & 1:
            return False

        for num in range(3, int(nums**0.5) + 1, 2):

            if nums % num == 0:
                return False

        return True
