Read till the end. It won't take long.

Script files for installing and uninstalling Oracle JDK.

The script files and the .deb must be in the same directory.

To install the Oracle JDK, open the terminal and run:
sudo ./install.sh

To uninstall the Oracle JDK, open the terminal and run:
sudo ./uninstall.sh

However, if you get some error like this:

sudo: ./install.sh: command not found

or like this:

sudo: ./uninstall.sh: command not found

then probably the files are not permitted to execute.
To make them executable, run these commands:

chmod 755 install.sh

chmod 755 uninstall.sh

This will give the permission to the script files to execute.
Now, try again to install and uninstall (if immediate uninstallation is necessary) the .deb file.

The script files were made for Oracle JDK version 16.0.2 which is the latest version at the time of writing this.
However, you may need to change the version which is an easy task.
Copy and paste the text of the script files.
Find "17" and replace all of them with the latest (or the one which is in your PC) Oracle JDK version and save it.

This script files are applicable for the .deb file.
I've tested this on my main machine which is running on Ubuntu 22.04 and I had no problems.
