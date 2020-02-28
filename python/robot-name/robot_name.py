import random
import string


class Robot:
    Names = set()

    def __init__(self):
        self.name = ''
        self._gen_name()

    def reset(self):
        self.name = ''
        self._gen_name()

    def _gen_name(self):
        while not self.name or self.name in Robot.Names:
            self.name = ''.join(
                    random.choices(string.ascii_uppercase, k=2) +
                    random.choices(string.digits, k=3)
                    )
        Robot.Names.add(self.name)
