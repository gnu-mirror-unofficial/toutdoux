#!/bin/sh

# *****************************************************************************
# Std.sh  : Scripts pour ToutDoux
# Version 1.0.0 (07/08/2001)
# Copyright (c) 2000 Philippe ROY
# Auteur : Philippe ROY <ph_roy@toutdoux.org>
# *****************************************************************************

# *****************************************************************************
# Menu
# *****************************************************************************

echo "ToutDoux"
echo ""
echo " Base make"
echo "     1: *                2: lib              3: app              4: automake         5: po"
echo "     6: backup           7: doc                                  9: pixmaps"
echo ""
echo " En cours"
echo "    10: cogitation      11: general         12: project"
echo ""
echo " Projet"
echo "    20: autoconf        21: autoconf+doc"
echo "    25: dist            26: tags            27: clean"
echo "    28: debian"
echo ""
echo " Site"
echo "    50: ssh             51: ChangeLog"
echo "    52: ? html          53: ? ftp           54: apt-ftparchive  55: backup"
echo "    56: doc             57: doc mise en cache"
echo ""
echo ""
echo " getxml :               60: autoconf        61: make            62: debian"
echo " dtags  :               70: autoconf        71: make            72: debian"
echo ""
echo ""
echo " Divers"
echo "    dnetc:  80: update    81: start       82: log"
echo "    LateX:  90: cv"
echo ""
echo " 0: l'ut"
echo ""

# *****************************************************************************
# Commandes
# *****************************************************************************

read reponse

case $reponse in

    # Compilation de base
    1)  cd /home/philou/P/toutdoux && make && make install ;;
    2)  cd /home/philou/P/toutdoux/lib && make && make install ;;
    3)	cd /home/philou/P/toutdoux/app && make && make install ;;
    4)	cd /home/philou/P/toutdoux && automake ;;
    5)	cd /home/philou/P/toutdoux/po && rm ToutDoux.pot && make update-po ;;

    6)  ls /home/philou/P/bak
	echo "répertoire ?"
	read reponse2
	mkdir /home/philou/P/bak/$reponse2
	cp -r /home/philou/P/toutdoux/* /home/philou/P/bak/$reponse2
	cd /home/philou/P/bak/$reponse2 && make clean ;;

    7)  cd /home/philou/P/toutdoux/doc && make && make install ;;
    9)  cd /home/philou/P/toutdoux/pixmaps && make install ;;

    # Compilation spécifique
    10) cd /home/philou/P/toutdoux/data-plugins/cogitation && make && make install ;;
    11) cd /home/philou/P/toutdoux/data-plugins/general && make && make install ;;
    12) cd /home/philou/P/toutdoux/data-plugins/project && make && make install ;;

    # Projet
    20) cd /home/philou/P/toutdoux && autoheader && autoconf && automake 
	./configure --prefix=/home/philou --enable-manuals=no
	make ;;
    21) cd /home/philou/P/toutdoux && autoheader && autoconf && automake 
	./configure --prefix=/home/philou
	make ;;

    25) cd /home/philou/P/toutdoux && make dist ;;
    26) cd /home/philou/P/toutdoux && make tags ;;
    27) cd /home/philou/P/toutdoux && make clean ;;

    28) rm -rf /home/philou/tmp/toutdoux*
	cp /home/philou/P/toutdoux/*.tar.gz /home/philou/tmp
	cd /home/philou/tmp && gzip -d toutdoux*.tar.gz && tar xf toutdoux*.tar && rm toutdoux*.tar
	cp /home/philou/P/toutdoux/*.tar.gz /home/philou/tmp
	echo "répertoire ?"
	cd /home/philou/tmp && ls
	read reponse1
	cd /home/philou/tmp/$reponse1/ && dh_make -e ph_roy@toutdoux.org -f ../$reponse1.tar.gz 
	cd /home/philou/tmp/$reponse1/debian && rm *ex*
	cd /home/philou/tmp/$reponse1/debian && rm README.Debian
	cp /home/philou/P/toutdoux/debian/control /home/philou/tmp/$reponse1/debian
	cp /home/philou/P/toutdoux/debian/copyright /home/philou/tmp/$reponse1/debian
	cp /home/philou/P/toutdoux/debian/dirs /home/philou/tmp/$reponse1/debian
	cp /home/philou/P/toutdoux/debian/docs /home/philou/tmp/$reponse1/debian
	cp /home/philou/P/toutdoux/debian/rules /home/philou/tmp/$reponse1/debian
	cd /home/philou/tmp/$reponse1/ && dpkg-buildpackage -rfakeroot -us -uc 
	echo "changes ?"
	cd /home/philou/tmp && ls
	read reponse2
	cd /home/philou/tmp/$reponse1/ && lintian -i ../$reponse2
	cp /home/philou/tmp/*$reponse1* /home/philou/Site/sourceforge/ftp/debian
	cp /home/philou/tmp/toutdoux*changes /home/philou/Site/sourceforge/ftp/debian
	cp /home/philou/tmp/toutdoux*deb /home/philou/Site/sourceforge/ftp/debian
	cp /home/philou/tmp/toutdoux*dsc /home/philou/Site/sourceforge/ftp/debian ;;

    # Site 
    50) ssh ph_roy@toutdoux.sourceforge.net ;;
    51) cd /home/philou/P/toutdoux/
	scp ChangeLog ph_roy@toutdoux.sourceforge.net:/home/groups/t/to/toutdoux/htdocs/doc ;;

    52) cd /home/philou/Site/sourceforge/
	echo "répertoire ?"
	ls
	read reponse2
	cd $reponse2
	ls
	echo "fichier ?"
	read reponse3
	scp $reponse3 ph_roy@toutdoux.sourceforge.net:/home/groups/t/to/toutdoux/htdocs/$reponse2 ;;

    53) cd /home/philou/Site/sourceforge/ftp
	echo "répertoire ?"
	ls
	read reponse2
	cd $reponse2
	ls
	echo "fichier ?"
	read reponse3
	scp $reponse3 ph_roy@toutdoux.sourceforge.net:/home/groups/ftp/pub/toutdoux/$reponse2 ;;

    54) cd /home/philou/Site/sourceforge/ftp/debian/ && apt-ftparchive packages ./ > Packages && gzip Packages
	scp Packages.gz ph_roy@toutdoux.sourceforge.net:/home/groups/ftp/pub/toutdoux/debian/ ;; 

    55) ls /home/philou/Site/bak
	echo "répertoire ?"
	read reponse2
 	mkdir /home/philou/Site/bak/$reponse2
	cp -r /home/philou/Site/sourceforge/* /home/philou/Site/bak/$reponse2 ;;

    56) cd /home/philou/Site/sourceforge/doc/user
	tar -cf ToutDoux-doc-en.tar ./en/* && gzip ToutDoux-doc-en.tar
	tar -cf ToutDoux-doc-es.tar ./es/* && gzip ToutDoux-doc-es.tar
	tar -cf ToutDoux-doc-fr.tar ./fr/* && gzip ToutDoux-doc-fr.tar
	cd /home/philou/Site/sourceforge/doc/devel
	tar -cf ToutDoux-doc-devel-en.tar ./en/* && gzip ToutDoux-doc-devel-en.tar
	tar -cf ToutDoux-doc-devel-es.tar ./es/* && gzip ToutDoux-doc-devel-es.tar
	tar -cf ToutDoux-doc-devel-fr.tar ./fr/* && gzip ToutDoux-doc-devel-fr.tar
	cd /home/philou/Site/sourceforge/doc
	scp -r * ph_roy@toutdoux.sourceforge.net:/home/groups/t/to/toutdoux/htdocs/doc ;;

    57) cp /home/philou/P/toutdoux/web/en/* /home/philou/Site/sourceforge/en/
        cp /home/philou/P/toutdoux/web/fr/* /home/philou/Site/sourceforge/fr/ ;;

    # getxml
    60) cd /home/philou/P/toutdoux/tools/getxml && autoheader && autoconf && automake 
	./configure --prefix=/home/philou
	make ;;
    61) cd /home/philou/P/toutdoux/tools/getxml && make clean && make && make install ;;

    62) rm -rf /home/philou/tmp/getxml*
	cp /home/philou/P/toutdoux/tools/getxml/*.tar.gz /home/philou/tmp
	cd /home/philou/tmp && gzip -d getxml*.tar.gz && tar xf getxml*.tar && rm getxml*.tar
	cp /home/philou/P/toutdoux/tools/getxml/*.tar.gz /home/philou/tmp
	echo "répertoire ?"
	cd /home/philou/tmp && ls
	read reponse1
	cd /home/philou/tmp/$reponse1/ && dh_make -e ph_roy@toutdoux.org -f ../$reponse1.tar.gz 
	cd /home/philou/tmp/$reponse1/debian && rm *ex*
	cd /home/philou/tmp/$reponse1/debian && rm README.Debian
	cp /home/philou/P/toutdoux/tools/getxml/debian/control /home/philou/tmp/$reponse1/debian
	cp /home/philou/P/toutdoux/tools/getxml/debian/copyright /home/philou/tmp/$reponse1/debian
	cp /home/philou/P/toutdoux/tools/getxml/debian/dirs /home/philou/tmp/$reponse1/debian
	cp /home/philou/P/toutdoux/tools/getxml/debian/docs /home/philou/tmp/$reponse1/debian
	cp /home/philou/P/toutdoux/tools/getxml/debian/rules /home/philou/tmp/$reponse1/debian
	cd /home/philou/tmp/$reponse1/ && dpkg-buildpackage -rfakeroot -us -uc
	echo "changes ?"
	cd /home/philou/tmp && ls
	read reponse2
	cd /home/philou/tmp/$reponse1/ && lintian -i ../$reponse2
	cp /home/philou/tmp/getxml*changes /home/philou/Site/sourceforge/ftp/debian
	cp /home/philou/tmp/getxml*deb /home/philou/Site/sourceforge/ftp/debian
	cp /home/philou/tmp/getxml*dsc /home/philou/Site/sourceforge/ftp/debian ;;

    # dtags
    70) cd /home/philou/P/toutdoux/tools/dtags && autoheader && autoconf && automake 
	./configure --prefix=/home/philou
	make ;;
    71) cd /home/philou/P/toutdoux/tools/dtags && make clean && make && make install
	cd /home/philou/P/toutdoux/tools/dtags/test && make test ;;

    72) rm -rf /home/philou/tmp/dtags*
	cp /home/philou/P/toutdoux/tools/dtags/*.tar.gz /home/philou/tmp
	cd /home/philou/tmp && gzip -d dtags*.tar.gz && tar xf dtags*.tar && rm dtags*.tar
	cp /home/philou/P/toutdoux/tools/dtags/*.tar.gz /home/philou/tmp
	echo "répertoire ?"
	cd /home/philou/tmp && ls
	read reponse1
	cd /home/philou/tmp/$reponse1/ && dh_make -e ph_roy@toutdoux.org -f ../$reponse1.tar.gz 
	cd /home/philou/tmp/$reponse1/debian && rm *ex*
	cd /home/philou/tmp/$reponse1/debian && rm README.Debian
	cp /home/philou/P/toutdoux/tools/dtags/debian/control /home/philou/tmp/$reponse1/debian
	cp /home/philou/P/toutdoux/tools/dtags/debian/copyright /home/philou/tmp/$reponse1/debian
	cp /home/philou/P/toutdoux/tools/dtags/debian/dirs /home/philou/tmp/$reponse1/debian
	cp /home/philou/P/toutdoux/tools/dtags/debian/docs /home/philou/tmp/$reponse1/debian
	cp /home/philou/P/toutdoux/tools/dtags/debian/rules /home/philou/tmp/$reponse1/debian
	cd /home/philou/tmp/$reponse1/ && dpkg-buildpackage -rfakeroot -us -uc 
	echo "changes ?"
	cd /home/philou/tmp && ls
	read reponse2
	cd /home/philou/tmp/$reponse1/ && lintian -i ../$reponse2
	cp /home/philou/tmp/dtags*changes /home/philou/Site/sourceforge/ftp/debian
	cp /home/philou/tmp/dtags*deb /home/philou/Site/sourceforge/ftp/debian
	cp /home/philou/tmp/dtags*dsc /home/philou/Site/sourceforge/ftp/debian ;;

    # Autre
    80) cd ~ && dnetc -update ;;
    81) cd ~ && nohup dnetc > /dev/null ;;
    82) cat /var/log/dnetc.log ;; 

    # Autre
    90) cd ~/Gestion/cv && latex cv.tex && dvips cv -o cv.ps && ggv cv.ps ;;

    # Fin
    0) echo "l'ut" ;;
esac

