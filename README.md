<div style="text-align: center; padding-bottom: 20px">
  <img src="https://github.com/carlossless/smk/assets/498906/30535a69-47a5-4229-8e08-fe2a840d8355" alt="SMK" />
</div>

# SMK - Small (device) Mechanical Keyboard Firmware

This is a keyboard firmware similar to [QMK](https://github.com/qmk/qmk_firmware), but targeting 8051-based devices like the Sinowealth SH68F90A (labeled as BYK916). It's aimed to be at least partially compatible with QMK configurations.

The S (Small) in SMK comes from this firmware using [SDCC](https://sdcc.sourceforge.net/) to build itself.

## ⚠️ WARNING ⚠️

This firmware is still highly experimental, so be cautious when trying to use it or extend it.

You can very easily end up with a bricked device if the written firmware can't jump back into ISP mode, so before testing or modifying it, it's best to have a full dump of your stock firmware and a tool (like the Sinolink) that can write it back.

## Supported Devices

| Keyboard | MCU | ISP | USB | Wireless | Details |
| -------- | --- | --- | --- | -------- | ------- |
| [NuPhy Air60 v1](https://nuphy.com/products/air60) | SH68F90A / BYK916 | ✅ | ✅ | TBD | [Details](docs/nuphy-air60.md) |

## Acknowledgements

* [libfx2](https://github.com/whitequark/libfx2)
* [LUFA](https://github.com/abcminiuser/lufa)
* [QMK](https://github.com/qmk/qmk_firmware)
