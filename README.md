# Hanbi Hardware

Hardware that has been tried with Pazuzu on OPNsense, and what happened. The Hardware pages on hanbi.net are built
from the files here.

- `devices/`: one file per whole box (a firewall you can buy or build). Use `template/device.yaml`.
- `parts.yaml`: parts that go in or on a box (Wi-Fi cards, network adapters, Bluetooth dongles, hotspots), each with
  what it was tried for and the result.
- `manifest.yaml` and `assets/proof/`: proof screenshots, each with exactly what was tested.
- `COORDINATION.md`: the tiers, the certification test and the rules for links.

## What a result means

Every result says what was tested, on which OPNsense and Pazuzu versions, on what date and by whom. "Works" means it
did that one job in that test. It never means a part or a box is secure.

A part that failed stays listed, with the reason, so nobody buys it for that job.

## Sending a result

1. Run the Pazuzu setup on your box.
2. For a whole box, copy `template/device.yaml` to `devices/<maker>-<model>.yaml` and fill it in. For a part, add an
   entry to `parts.yaml` in the same shape as the others.
3. Leave out serial numbers, IP and hardware addresses, Wi-Fi names, keys and QR codes, in the text and in photos.
4. Open a pull request. Hanbi reviews it before it shows on the site.

## Licence

Apache-2.0 (see `LICENSE`), print files included. The licence covers the files, not the Hanbi or Pazuzu names or
logos. A box you build yourself is not a Hanbi box, and is not Hanbi Certified unless Hanbi certifies it.
