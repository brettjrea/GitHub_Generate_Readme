#!/bin/bash
set -e

# get parameters
TARGET_ISO=${2:-"`pwd`/mini.iso"}

# get directories
CURRENT_DIR="`pwd`"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TMP_DOWNLOAD_DIR="`mktemp -d`"
TMP_DISC_DIR="`mktemp -d`"
TMP_INITRD_DIR="`mktemp -d`"

# download and extract server iso
SOURCE_ISO_URL="http://archive.ubuntu.com/ubuntu/dists/bionic/main/installer-amd64/current/images/netboot/mini.iso"
cd "$TMP_DOWNLOAD_DIR"
wget -4 "$SOURCE_ISO_URL" -O "./server.iso"
7z x "./server.iso" "-o$TMP_DISC_DIR"

# prepare assets
cd "$TMP_INITRD_DIR"
mkdir "./custom"
cp "$SCRIPT_DIR/custom/preseed.cfg" "./preseed.cfg"
cat "$TMP_DISC_DIR/initrd.gz" | gzip -d > "./initrd"
echo "./preseed.cfg" | fakeroot cpio -o -H newc -A -F "./initrd"
find "./custom" | fakeroot cpio -o -H newc -A -F "./initrd"
cat "./initrd" | gzip -9c > "$TMP_DISC_DIR/initrd.gz"

# build iso
cd "$TMP_DISC_DIR"
rm -r '[BOOT]'
xorriso -as mkisofs -r -V "ubuntu" -J -b isolinux.bin -c boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -input-charset utf-8 -isohybrid-mbr /usr/lib/ISOLINUX/isohdpfx.bin -eltorito-alt-boot -e boot/grub/efi.img -no-emul-boot -isohybrid-gpt-basdat -o "$TARGET_ISO" ./

# go back to initial directory
cd "$CURRENT_DIR"

# delete all temporary directories
rm -r "$TMP_DOWNLOAD_DIR"
rm -r "$TMP_DISC_DIR"
rm -r "$TMP_INITRD_DIR"

# done
echo "Finished Baking Golden Image"
