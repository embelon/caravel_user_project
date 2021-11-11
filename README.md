# Caravel User Project

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![UPRJ_CI](https://github.com/efabless/caravel_project_example/actions/workflows/user_project_ci.yml/badge.svg)](https://github.com/efabless/caravel_project_example/actions/workflows/user_project_ci.yml) [![Caravel Build](https://github.com/efabless/caravel_project_example/actions/workflows/caravel_build.yml/badge.svg)](https://github.com/efabless/caravel_project_example/actions/workflows/caravel_build.yml)

| :exclamation: Important Note            |
|-----------------------------------------|

## Additional memory (internal 1kB of OpenRAM and HyperRAM driver for external memory chip) connected through Wishbone to Caravel SoC for MPW submission

| Memory block  | Space| Address | Size |
| --- | --- | --- | --- |
| HyperRAM ext. chip  | RAM  | 0x3000_0000 - 0x307f_ffff | 8MB |
| HyperRAM ext. chip  | Registers  | 0x3080_0000 - 0x3080_ffff | max 64k registers, 16bit each |
| HyperRAM driver  | CSRs  | 0x3081_0000 - 0x3081_ffff | max 64kB, 16k CSRs |
| OpenRAM  | RAM  | 0x30c0_0000 - 0x30c0_ffff | max 64kB |

