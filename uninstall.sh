#!/bin/bash

echo "Removing Oracle JDK."
# This will remove the JDK package and the compiler.
sudo apt purge --remove jdk-16.0.2 -y

echo "Removing JDK environment."
# This will remove the Java Runtime Environment.
sudo rm /etc/profile.d/jdk-16.0.2.sh

# This wil remove java, javac and jar from update-alternatives.
sudo update-alternatives --remove java /usr/lib/jvm/jdk-16.0.2/bin/java
sudo update-alternatives --remove jar /usr/lib/jvm/jdk-16.0.2/bin/jar
sudo update-alternatives --remove javac /usr/lib/jvm/jdk-16.0.2/bin/javac

echo "Oracle JDK removed."
echo "However, you may need to restart your system."
