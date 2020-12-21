
categories = [
    "floating_point",
    "integer",
]

microcode = '''
# AVX512 instructions
'''
for category in categories:
    exec("from . import {s} as cat".format(s=category))
    microcode += cat.microcode
