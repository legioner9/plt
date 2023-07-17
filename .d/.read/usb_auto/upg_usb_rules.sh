#!/bin/bash
echo "sudo cp ${PATH_READ_DIR}/usb_auto/10-local-usb-storage.rules /etc/udev/rules.d"
sudo cp "${PATH_READ_DIR}"/usb_auto/10-local-usb-storage.rules /etc/udev/rules.d
echo "sudo cp ${PATH_READ_DIR}/usb_auto/mount_media /usr/bin"
sudo cp "${PATH_READ_DIR}"/usb_auto/mount_media /usr/bin