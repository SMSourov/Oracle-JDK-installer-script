#!/bin/bash

echo "Installing Oracle JDK 17"
# This command will install the deb file.
sudo dpkg -i jdk-17_linux-x64_bin.deb

echo "Configuring Java."
# This command will install the Java compiler.
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-17/bin/java 1
sudo update-alternatives --install /usr/bin/jar jar /usr/lib/jvm/jdk-17/bin/jar 1
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk-17/bin/javac 1

sudo update-alternatives --set java /usr/lib/jvm/jdk-17/bin/java
sudo update-alternatives --set jar /usr/lib/jvm/jdk-17/bin/jar
sudo update-alternatives --set javac /usr/lib/jvm/jdk-17/bin/javac

echo "Setting the Java Environment."
# This will setup the Java Runtime Enviroment.
cd /etc/profile.d/

cat > jdk-17.sh << EOF
export J2SDKDIR=/usr/lib/jvm/jdk-17
export J2REDIR=/usr/lib/jvm/jdk-17
export PATH=\$PATH:/usr/lib/jvm/jdk-17/bin
export JAVA_HOME=/usr/lib/jvm/jdk-17
export DERBY_HOME=/usr/lib/jvm/JDK-17
EOF

source /etc/profile.d/jdk-17.sh

echo "Oracle JDK installation finished."
