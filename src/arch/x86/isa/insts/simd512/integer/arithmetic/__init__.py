categories = [
    "shlx",
    "vpaddd",
    "vpaddq",
    "vpaddsw",
    "vpaddw",
    "vpaddsb",
    "vpaddb",
    "vpandd",
    "vpandq",
    "vpcmpeqd",
    "vpcmpeqb",
    "vpmovmskb",
    "vpsubd",
    "vpsubq",
    "vpminub",
    "vpminsd",
    "vpminsq",
    "vpmuludq",
    "vpmuldq",
    "vpmullw",
    "vpmulld",
    "vpslld",
    "vpsllq",
    "vpslldq",
    "vpsrld",
    "vpsrlq",
    "vpsraq",
    "vsqrtsd",
    "vpsadbw",
]

microcode = """
# AVX512 instructions
"""
for category in categories:
    exec("from . import {s} as cat".format(s=category))
    microcode += cat.microcode
