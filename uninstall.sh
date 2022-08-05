#!/bin/bash

echo "Removing Oracle JDK."
# This will remove the JDK package and the compiler.
sudo apt purge --remove jdk-17 -y

echo "Removing JDK environment."
# This will remove the Java Runtime Environment.
sudo rm /etc/profile.d/jdk-17.sh

# This wil remove java, javac and jar from update-alternatives.
sudo update-alternatives --remove jar /usr/lib/jvm/jdk-17/bin/jar
sudo update-alternatives --remove jarsigner /usr/lib/jvm/jdk-17/bin/jarsigner
sudo update-alternatives --remove java /usr/lib/jvm/jdk-17/bin/java
sudo update-alternatives --remove javac /usr/lib/jvm/jdk-17/bin/javac
sudo update-alternatives --remove javadoc /usr/lib/jvm/jdk-17/bin/javadoc
sudo update-alternatives --remove javap /usr/lib/jvm/jdk-17/bin/javap
sudo update-alternatives --remove jcmd /usr/lib/jvm/jdk-17/bin/jcmd
sudo update-alternatives --remove jconsole /usr/lib/jvm/jdk-17/bin/jconsole
sudo update-alternatives --remove jdb /usr/lib/jvm/jdk-17/bin/jdb
sudo update-alternatives --remove jdeprscan /usr/lib/jvm/jdk-17/bin/jdeprscan
sudo update-alternatives --remove jdeps /usr/lib/jvm/jdk-17/bin/jdeps
sudo update-alternatives --remove jfr /usr/lib/jvm/jdk-17/bin/jfr
sudo update-alternatives --remove jhsdb /usr/lib/jvm/jdk-17/bin/jhsdb
sudo update-alternatives --remove jimage /usr/lib/jvm/jdk-17/bin/jimage
sudo update-alternatives --remove jinfo /usr/lib/jvm/jdk-17/bin/jinfo
sudo update-alternatives --remove jlink /usr/lib/jvm/jdk-17/bin/jlink
sudo update-alternatives --remove jmap /usr/lib/jvm/jdk-17/bin/jmap
sudo update-alternatives --remove jmod /usr/lib/jvm/jdk-17/bin/jmod
sudo update-alternatives --remove jpackage /usr/lib/jvm/jdk-17/bin/jpackage
sudo update-alternatives --remove jps /usr/lib/jvm/jdk-17/bin/jps
sudo update-alternatives --remove jrunscript /usr/lib/jvm/jdk-17/bin/jrunscript
sudo update-alternatives --remove jshell /usr/lib/jvm/jdk-17/bin/jshell
sudo update-alternatives --remove jstack /usr/lib/jvm/jdk-17/bin/jstack
sudo update-alternatives --remove jstat /usr/lib/jvm/jdk-17/bin/jstat
sudo update-alternatives --remove jstatd /usr/lib/jvm/jdk-17/bin/jstatd
sudo update-alternatives --remove keytool /usr/lib/jvm/jdk-17/bin/keytool
sudo update-alternatives --remove rmiregistry /usr/lib/jvm/jdk-17/bin/rmiregistry
sudo update-alternatives --remove serialver /usr/lib/jvm/jdk-17/bin/serialver





# Remove the shortcuts.
sudo rm Run_JAR.sh
sudo rm /usr/share/applications/Oracle_JAR_17.desktop


echo "Oracle JDK removed."

echo "However, you may need to restart your system."
