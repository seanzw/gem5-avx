# Copyright (c) 2022 The Regents of the University of California
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met: redistributions of source code must retain the above copyright
# notice, this list of conditions and the following disclaimer;
# redistributions in binary form must reproduce the above copyright
# notice, this list of conditions and the following disclaimer in the
# documentation and/or other materials provided with the distribution;
# neither the name of the copyright holders nor the names of its
# contributors may be used to endorse or promote products derived from
# this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
# OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

from testlib import *

if config.bin_path:
    resource_path = config.bin_path
else:
    resource_path = joinpath(absdirpath(__file__))

resource_path = absdirpath(__file__)
print(resource_path)

verifiers = (
    verifier.MatchStdoutNoPerf(joinpath(resource_path, "ref", "simout")),
)

# The following lists the RISCV binaries. Those commented out presently result
# in a test failure. This is outlined in the following Jira issue:
# https://gem5.atlassian.net/browse/GEM5-496
binary_configs = (("avxtests", (None,)),)

cpu_types = ("atomic", "timing", "minor", "o3")

for cpu_type in cpu_types:
    for cfg in binary_configs:
        template_bin, all_bits = cfg
        for bits in all_bits:
            binary = template_bin.format(bits)
            config_args = [
                binary,
                cpu_type,
                "x86",
                "--num-cores",
                "4",
                "--resource-directory",
                resource_path,
            ]
            gem5_verify_config(
                name=f"asm-x86-avx-{binary}-{cpu_type}",
                verifiers=verifiers,
                config=joinpath(
                    config.base_dir,
                    "tests",
                    "gem5",
                    "configs",
                    "simple_binary_run.py",
                ),
                config_args=config_args,
                valid_isas=(constants.all_compiled_tag,),
                valid_hosts=constants.supported_hosts,
            )
