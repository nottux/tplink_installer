1)Requirements
sh, make, sudo, insmod, cd, rm with supporting -r option, echo, modprobe, tail, tar with supporting -zxv -C options, mktemp with supporting -dp options
/dev/shm folder with read-write permission and script with read permission to user who running the script
2)How to run?
download only the tplink_installer.sh script and run the script with sh or bash
after the install if driver not works or couses the problems remove the drive
3)How it works?
script is made by script head and .tar.gz archive
archive is simply a fork of "https://github.com/tuxutku/tplink_installer/tree/mcp" folder
script extracts itself to /dev/shm/tmp.xxxx folder (xxxx is a random text and tmp.xxxx folder gets created by mktemp command)
then script compiles the modified source code and installs
then installs the modules
at the and removes the tmp.xxx folder and exits
4)What i don't know?
I don't know which kernel versions it runs on except "4.10.0-33-generic", this works on "4.10.0-33-generic" as i tested
what architecture this works on etc.
