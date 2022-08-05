#!/bin/bash

echo "Installing Oracle JDK 17"
# This command will install the deb file.
sudo apt install ./jdk-17_linux-x64_bin.deb





# Run_JAR.sh will change the directory 
# to working directory and run the JAR 
# file from there. By default, user 
# home directory is set as current 
# working directory no matter where 
# the JAR file is located. 

# Run_JAR.sh is executable. 
cat > Run_JAR.sh << EOF
#!/bin/bash 
# change working directory 
cd \`dirname \$1\`
# run JAR 
/bin/java -jar \$@
EOF

# Make Run_JAR.sh executable.
sudo chmod 755 Run_JAR.sh







echo "Configuring Java."
# This command will install the Java compiler.
sudo update-alternatives --install /usr/bin/jar jar /usr/lib/jvm/jdk-17/bin/jar 1
sudo update-alternatives --install /usr/bin/jarsigner jarsigner /usr/lib/jvm/jdk-17/bin/jarsigner 1
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-17/bin/java 1
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk-17/bin/javac 1
sudo update-alternatives --install /usr/bin/javadoc javadoc /usr/lib/jvm/jdk-17/bin/javadoc 1
sudo update-alternatives --install /usr/bin/javap javap /usr/lib/jvm/jdk-17/bin/javap 1
sudo update-alternatives --install /usr/bin/jcmd jcmd /usr/lib/jvm/jdk-17/bin/jcmd 1
sudo update-alternatives --install /usr/bin/jconsole jconsole /usr/lib/jvm/jdk-17/bin/jconsole 1
sudo update-alternatives --install /usr/bin/jdb jdb /usr/lib/jvm/jdk-17/bin/jdb 1
sudo update-alternatives --install /usr/bin/jdeprscan jdeprscan /usr/lib/jvm/jdk-17/bin/jdeprscan 1
sudo update-alternatives --install /usr/bin/jdeps jdeps /usr/lib/jvm/jdk-17/bin/jdeps 1
sudo update-alternatives --install /usr/bin/jfr jfr /usr/lib/jvm/jdk-17/bin/jfr 1
sudo update-alternatives --install /usr/bin/jhsdb jhsdb /usr/lib/jvm/jdk-17/bin/jhsdb 1
sudo update-alternatives --install /usr/bin/jimage jimage /usr/lib/jvm/jdk-17/bin/jimage 1
sudo update-alternatives --install /usr/bin/jinfo jinfo /usr/lib/jvm/jdk-17/bin/jinfo 1
sudo update-alternatives --install /usr/bin/jlink jlink /usr/lib/jvm/jdk-17/bin/jlink 1
sudo update-alternatives --install /usr/bin/jmap jmap /usr/lib/jvm/jdk-17/bin/jmap 1
sudo update-alternatives --install /usr/bin/jmod jmod /usr/lib/jvm/jdk-17/bin/jmod 1
sudo update-alternatives --install /usr/bin/jpackage jpackage /usr/lib/jvm/jdk-17/bin/jpackage 1
sudo update-alternatives --install /usr/bin/jps jps /usr/lib/jvm/jdk-17/bin/jps 1
sudo update-alternatives --install /usr/bin/jrunscript jrunscript /usr/lib/jvm/jdk-17/bin/jrunscript 1
sudo update-alternatives --install /usr/bin/jshell jshell /usr/lib/jvm/jdk-17/bin/jshell 1
sudo update-alternatives --install /usr/bin/jstack jstack /usr/lib/jvm/jdk-17/bin/jstack 1
sudo update-alternatives --install /usr/bin/jstat jstat /usr/lib/jvm/jdk-17/bin/jstat 1
sudo update-alternatives --install /usr/bin/jstatd jstatd /usr/lib/jvm/jdk-17/bin/jstatd 1
sudo update-alternatives --install /usr/bin/keytool keytool /usr/lib/jvm/jdk-17/bin/keytool 1
sudo update-alternatives --install /usr/bin/rmiregistry rmiregistry /usr/lib/jvm/jdk-17/bin/rmiregistry 1
sudo update-alternatives --install /usr/bin/serialver serialver /usr/lib/jvm/jdk-17/bin/serialver 1



sudo update-alternatives --set jar /usr/lib/jvm/jdk-17/bin/jar
sudo update-alternatives --set jarsigner /usr/lib/jvm/jdk-17/bin/jarsigner
sudo update-alternatives --set java /usr/lib/jvm/jdk-17/bin/java
sudo update-alternatives --set javac /usr/lib/jvm/jdk-17/bin/javac
sudo update-alternatives --set javadoc /usr/lib/jvm/jdk-17/bin/javadoc
sudo update-alternatives --set javap /usr/lib/jvm/jdk-17/bin/javap
sudo update-alternatives --set jcmd /usr/lib/jvm/jdk-17/bin/jcmd
sudo update-alternatives --set jconsole /usr/lib/jvm/jdk-17/bin/jconsole
sudo update-alternatives --set jdb /usr/lib/jvm/jdk-17/bin/jdb
sudo update-alternatives --set jdeprscan /usr/lib/jvm/jdk-17/bin/jdeprscan
sudo update-alternatives --set jdeps /usr/lib/jvm/jdk-17/bin/jdeps
sudo update-alternatives --set jfr /usr/lib/jvm/jdk-17/bin/jfr
sudo update-alternatives --set jhsdb /usr/lib/jvm/jdk-17/bin/jhsdb
sudo update-alternatives --set jimage /usr/lib/jvm/jdk-17/bin/jimage
sudo update-alternatives --set jinfo /usr/lib/jvm/jdk-17/bin/jinfo
sudo update-alternatives --set jlink /usr/lib/jvm/jdk-17/bin/jlink
sudo update-alternatives --set jmap /usr/lib/jvm/jdk-17/bin/jmap
sudo update-alternatives --set jmod /usr/lib/jvm/jdk-17/bin/jmod
sudo update-alternatives --set jpackage /usr/lib/jvm/jdk-17/bin/jpackage
sudo update-alternatives --set jps /usr/lib/jvm/jdk-17/bin/jps
sudo update-alternatives --set jrunscript /usr/lib/jvm/jdk-17/bin/jrunscript
sudo update-alternatives --set jshell /usr/lib/jvm/jdk-17/bin/jshell
sudo update-alternatives --set jstack /usr/lib/jvm/jdk-17/bin/jstack
sudo update-alternatives --set jstat /usr/lib/jvm/jdk-17/bin/jstat
sudo update-alternatives --set jstatd /usr/lib/jvm/jdk-17/bin/jstatd
sudo update-alternatives --set keytool /usr/lib/jvm/jdk-17/bin/keytool
sudo update-alternatives --set rmiregistry /usr/lib/jvm/jdk-17/bin/rmiregistry
sudo update-alternatives --set serialver /usr/lib/jvm/jdk-17/bin/serialver





# This will install the shortcuts for 
# JAR files. 

# Oracle_JAR_17.desktop is 
# to show in file explorer. This will 
# be shown as "Run JAR". It will use 
# GNOME Tweak's icon as the application 
# icon. 


# Oracle_JAR_17.desktop is not executable. 
cat > Oracle_JAR_17.desktop << EOF
[Desktop Entry]
Version=17.0
Name[en_US]=Run JAR
Type=Application
Icon=org.gnome.tweaks
GenericName[en_US]=Run Java archive program
Comment[en_US]=A file association for .jar file for java.
Exec=/bin/bash $PWD/Run_JAR.sh %U
Terminal=false
NoDisplay=true
Type=Application
Categories=Application
EOF
sudo mv Oracle_JAR_17.desktop /usr/share/applications




echo "Setting the Java Environment."
# This will setup the Java Runtime Enviroment.
cd /etc/profile.d/

cat > jdk-17.sh << EOF
export J2SDKDIR=/usr/lib/jvm/jdk-17
export J2REDIR=/usr/lib/jvm/jdk-17
export PATH=\$PATH:/usr/lib/jvm/jdk-17/bin
export JAVA_HOME=/usr/lib/jvm/jdk-17
export DERBY_HOME=/usr/lib/jvm/jdk-17
EOF

source /etc/profile.d/jdk-17.sh



echo "Oracle JDK installation finished."
