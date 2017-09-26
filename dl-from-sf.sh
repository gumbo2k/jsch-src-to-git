#/bin/sh

for x in $(seq 3 13) ; do 
    wget -O jsch-test-0.0.${x}.zip https://sourceforge.net/projects/jsch/files/jsch/0.0.${x}/jsch-0.0.${x}.zip/download 
done

for x in $(seq 0 54) ; do
    wget -O jsch-test-0.1.${x}.zip https://sourceforge.net/projects/jsch/files/jsch/0.1.${x}/jsch-0.1.${x}.zip/download 
done

