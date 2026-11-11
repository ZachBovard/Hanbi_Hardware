# Coordination

This repo is the source for the Hardware section of hanbi.net. Device entries are written here, and the site builds its pages from them.

## Layout

| Path | What it holds |
| --- | --- |
| `manifest.yaml` | Proof assets for posts and the site, each with what was tested |
| `assets/proof/` | Screenshots that `manifest.yaml` points to |
| `template/device.yaml` | The fields every device entry uses |
| `devices/` | One YAML file per device (none yet) |

## Pages the site builds

Hardware home, then six pages under it:

1. **Hanbi Certified**: boxes that passed the public test; they carry the badge.
2. **Community tested**: clean runs reported by contributors, reviewed by Hanbi.
3. **Known not to work**: tried and failed, with the reason and the version.
4. **Untested candidates**: boxes picked from research that nobody has run the public test on yet.
5. **Build your own Hanbi**: parts list, print files and the step-by-step build.
6. **Contribute**: the device template and how to send a pull request.

Each device in the first four lists gets its own page, built from its file in `devices/`.

## Tiers

| Tier | Who puts it there | What it means |
| --- | --- | --- |
| Hanbi Certified | Hanbi, after running the certification test | Passed the public test on a unit Hanbi ran |
| Community tested | A contributor's pull request, reviewed by Hanbi | Someone ran the public test and sent a clean result |
| Known not to work | Anyone, reviewed by Hanbi | Tried and failed, with the reason and the version |
| Untested candidates | Hanbi, from research | Not yet run through the public test |

An untested candidate leaves `tier` blank. It moves to a tier once a run of the public test is on record.

Every Hanbi box runs the full public test before it ships, so it ships Hanbi Certified.

A home build is "built to the certified design". It becomes Community tested once its builder runs the public test and sends the result.

## Certification test

1. Runs OPNsense 26.7 or newer.
2. The Pazuzu wizard completes every stage, with no stage undone by a failed test.
3. Every service is up after a reboot.
4. More checks to come.

The badge names what was tested, for example "Hanbi Certified · OPNsense 26.7 · Pazuzu 1.0", and links to the device page. It means the box ran the test cleanly, never that it is secure.

- Only Hanbi grants it. It is never sold or traded for links.
- It is withdrawn when a release breaks the device, and the page says why and from which version.
- Makers and sellers may use it only with Hanbi's written permission, only for the exact model certified, always linked to its page, and must stop if it is withdrawn.

## Buy links

Every page with a paid link opens with this disclosure, near the links:

> Some links on this page are paid links: Hanbi earns a commission if you buy through them. A link never decides a device's tier. Hanbi also sells its own boxes built on hardware listed here.
>
> As an Amazon Associate I earn from qualifying purchases.

- Every paid link carries "(paid link)" right after it.
- A device a maker gave or lent Hanbi says so: "[Maker] gave Hanbi this unit for testing."
- Where the maker sells direct, that link comes first.
- Known not to work devices get no buy links.
- Untested candidates get no paid links.

## Build your own Hanbi

| Part | Spec |
| --- | --- |
| Protectli Vault | V1410: N5105, 4× 2.5G NICs, 8 GB RAM, 32 GB eMMC |
| 7-inch screen | GeeekPi 7-inch capacitive touch, 1024×600 |

The rest of the parts list is still being filled in.

Print files are licensed Apache-2.0, with this line beside them:

> Print files © 2026 Zachary Bovard, licensed Apache-2.0. The licence covers the files, not the Hanbi or Pazuzu names or logos. A box you print yourself is not a Hanbi box, and is not Hanbi Certified unless Hanbi certifies it.
