#!/bin/sh

for file in `find . -type f -name "*.c"`
do 
    sed -e '1,$s/ int / gint /g' ${file} > fichier.bak
    mv fichier.bak ${file}
done

exit 0
