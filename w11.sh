#! /bin/bash
# Make Instance Ready for Remote Desktop or RDP
apt-get update -y
wget -O lite11.qcow2 https://app.vagrantup.com/thuonghai2711/boxes/WindowsQCOW2/versions/1.0.2/providers/qemu.box
echo "Download windows files"
echo "Wait..."
echo "I m Working Now.."
echo Downloading qemu
apt-get install qemu-system-x86 -y
echo "Wait..."
echo "Starting Windows"
qemu-system-x86_64 -hda lite11.qcow2 -m 12G -smp cores=8 -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rn>
clear
echo RDP Address:
echo "===================================="
echo "Username: Administrator"
echo "Password: Thuonghai001"
echo "===================================="
echo "RDP run up 12 hours"
echo "UysnX <3"
echo "===================================="
sleep 43200
