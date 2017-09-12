a=$(mktemp -dp /dev/shm)
echo "extracting"
tail +21 "$0" | tar -zxv -C "$a"
echo "extraction complete"
cd "$a"
cd *
echo "installing"
make
echo "enter sudo password when required"
sudo make install
echo "installition complete"
echo "loading dependent modules"
sudo modprobe lib80211
sudo modprobe cfg80211
echo "inserting the module into the Linux kernel"
sudo insmod 8188eu.ko
echo "removing temorary files"
rm -r "$a"
echo "completed"
exit
