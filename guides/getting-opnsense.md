# Getting OPNsense

Pazuzu sets up an OPNsense firewall; it does not install OPNsense for you. This page says how to get OPNsense onto a
computer, either installed for good or running from a live disc so you can try it and lose nothing.

Everything here comes from the OPNsense project's own pages, linked under [Sources](#sources). Where this page and
theirs disagree, theirs is right: they change with each release. Checked on 17 November 2026, against OPNsense 26.7.

## What you need

- **A 64-bit PC (x86-64, "amd64") to be the firewall.** OPNsense's own figures: about 1 GHz with two cores and 3 GB
  of memory at the least, 4 GB and a 40 GB SSD to be comfortable, 8 GB and a 120 GB SSD recommended. The installer
  itself needs at least 3 GB of memory. [1]
- **Two network ports on it:** one for the internet, one for your home network. OPNsense recommends Intel network
  cards. [1]
- **A USB stick** you can erase (or a blank DVD), and another computer to prepare it on.
- **A screen and keyboard** on the firewall PC for the first start, or a serial cable if it has no screen.
- **OPNsense 26.7 or newer.** Pazuzu does not run against older versions.

## 1. Download the image

Go to <https://opnsense.org/download/>, choose **amd64**, an image type and a mirror near you. [2]

| Image | Use it when |
|---|---|
| **vga** | You will start the firewall PC from a USB stick and it has a screen. The usual choice. |
| **dvd** | You will burn a disc, or start a virtual machine from an ISO file. |
| **serial** | The PC has no screen and you will use a serial console (115200). |
| **nano** | A small embedded device that runs from an SD card or USB stick. It is already installed: there is nothing to install and no live mode to try. |

The **vga**, **dvd** and **serial** images all start as a live system and all hold the installer. [2][3]

The download is a `.bz2` file. Unpack it: on Windows with 7-Zip, on macOS or Linux with `bzip2 -d <file>.bz2`. [3]

## 2. Check what you downloaded

A firewall is not the place for a tampered download. OPNsense publishes a checksum for every image, and says a
checksum file sitting beside the image on a mirror is not proof by itself: compare it with the one in the release
announcement on their forum, blog or GitHub. [2]

On the file you downloaded, before unpacking:

    openssl sha256 OPNsense-<version>-vga-amd64.img.bz2

On Windows, without OpenSSL:

    certutil -hashfile OPNsense-<version>-vga-amd64.img.bz2 SHA256

The line of letters and numbers must match the published one exactly. OPNsense's install page also describes a
stronger check, against their signing key. [3]

## 3. Put it on the USB stick

This erases the stick.

- **Windows:** OPNsense names Rufus and Etcher. Pick the unpacked `.img` file and the stick, and write. [3]
- **macOS:** `sudo dd if=OPNsense-<version>-vga-amd64.img of=/dev/rdiskX bs=64k` (find X in Disk Utility). [3]
- **Linux:** `sudo dd if=OPNsense-<version>-vga-amd64.img of=/dev/sdX bs=16k` (X is the stick, not your own disk). [3]

A warning about "trailing garbage" on macOS or Linux is expected and harmless. [3] For the **dvd** image, burn the
`.iso` to a disc or give it to your virtual machine as its disc.

## 4. Start the firewall PC from it

Plug the internet into one port and your own computer into the other. Start the PC from the stick (the boot menu key
is usually F11, F12 or Esc). It starts OPNsense as a **live system**: running from memory, with the PC's own disk
untouched. [3]

From here there are two ways to go.

### Try it: the live system

Stay in the live system. It is a working firewall.

- **Nothing is kept.** The stick is read-only, so every setting is gone when the PC restarts. [3]
- Its page is at `https://192.168.1.1/` from the computer on the home-network port. Your browser warns about the
  certificate, which is expected on a new firewall. The sign-in is user `root`, password `opnsense`. [3]
- **Run Pazuzu and choose "Just trying it".** Pazuzu then treats it as a test flight: you can see every step, and a
  restart puts everything back.
- A live system has little room and cannot update itself, so a few steps (updates, the larger block lists) are
  skipped or cut short. Pazuzu says which.

### Keep it: install to the PC's disk

Installing erases the disk you pick.

1. At the console's login, sign in as user `installer`, password `opnsense`. That starts the installer. [3]
2. It asks for your keyboard, the kind of install (the default suits most people) and the disk. Confirm. [3]
3. Change the root password when it offers to, and let it finish.
4. Take the stick out and restart.

The installed firewall comes up at `https://192.168.1.1/` with user `root` and the password you set (`opnsense` if
you set none). [3] Then run Pazuzu and choose **New / Testing**.

If the `installer` sign-in does nothing, sign in as `root`, choose the shell from the menu and run
`opnsense-installer`. [3]

## Before you run Pazuzu

- If your home network already uses 192.168.1.x (many routers do), connect your computer straight to the firewall's
  home-network port for the setup, not through the old router.
- The default password `opnsense` is known to everyone. Pazuzu's setup gives you an admin sign-in of your own; do
  not leave a firewall on the default for longer than the setup takes.
- On a firewall you already use, save a backup of its configuration first (System, Configuration, Backups).

## Sources

1. OPNsense documentation, "Hardware sizing & setup": <https://docs.opnsense.org/manual/hardware.html>
2. OPNsense, "Download": <https://opnsense.org/download/>
3. OPNsense documentation, "Initial Installation & Configuration": <https://docs.opnsense.org/manual/install.html>

Pazuzu is an independent tool for OPNsense. OPNsense is a trademark of Deciso B.V.; Pazuzu is not part of the OPNsense project and is not endorsed by Deciso.
