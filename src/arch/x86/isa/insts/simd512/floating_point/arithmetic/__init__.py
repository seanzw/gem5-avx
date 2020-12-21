categories = [
    "vaddss",
    "vaddsd",
    "vaddps",
    "vaddpd",
    "vandps",
    "vfmadd231ps",
    "vsubss",
    "vsubsd",
    "vsubps",
    "vsubpd",
    "vmulps",
    "vmulpd",
    "vmulss",
    "vmulsd",
    "vdivss",
    "vdivsd",
    "vdivps",
    "vdivpd",
    "vxorps",
    "vxorpd",
    "vpxor",
]

microcode = '''
# AVX512 instructions
'''
for category in categories:
    exec("from . import {s} as cat".format(s=category))
    microcode += cat.microcode
