# *****************************************************************************
# Makefile : Script de compilation
# Makefile : Compilation script
#
#
# TouxDoux : Chtit gestionnaire de projet - A littl' project manager
# Copyright (c) 2000-2001 Philippe Roy
# Auteur - Author : Philippe Roy <ph_roy@toutdoux.org>
#
#
# Ce programme est un logiciel libre ; vous pouvez le redistribuer et/ou le modifier
# sous les termes de la licence publique générale GNU telle qu'elle est publiée par
# la Free Software Foundation ; soit la version 2 de la licence, ou
# (comme vous voulez) toute version ultérieure.
#
# Ce programme est distribué dans l'espoir qu'il sera utile,
# mais SANS AUCUNE GARANTIE ; même sans la garantie de
# COMMERCIALITÉ ou d'ADÉQUATION A UN BUT PARTICULIER. Voir la
# licence publique générale GNU pour plus de détails.
#
# Vous devriez avoir reçu une copie de la licence publique générale GNU
# avec ce programme ; si ce n'est pas le cas, écrivez à la Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
#
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA. 
# *****************************************************************************

srcdir = .
PACKAGE = ToutDoux
LANGS = en fr

all:
	$(MAKE) extraction; \
	$(MAKE) fusion

extraction:
	for file in $(srcdir)/xml/*.xml.in; do \
	  getxml-extract -i $$file > $$file.h; \
	done
	getxml-extract -i site.xsl.in > site.xsl.in.h; \
	test -f $(srcdir)/intl/$(PACKAGE).pot && rm $(srcdir)/intl/$(PACKAGE).pot; \
	xgettext --default-domain=$(PACKAGE) --directory=$(srcdir) --add-comments --keyword=_ --keyword=N_ --files-from=$(srcdir)/intl/POTFILES.in; \
	mv $(srcdir)/$(PACKAGE).po $(srcdir)/intl/$(PACKAGE).pot

fusion:
	catalogs='$(LANGS)'; \
	for cat in $$catalogs; do \
	  cat=`basename $$cat`; \
	  lang=`echo $$cat | sed 's/\$$//'`; \
	  cp Makefile-lang $(srcdir)/$$lang/Makefile; \
	  if msgmerge $(srcdir)/intl/$$lang.po $(srcdir)/intl/$(PACKAGE).pot -o $(srcdir)/intl/$$lang.new.po; then \
	    mv -f $(srcdir)/intl/$$lang.new.po $(srcdir)/intl/$$lang.po; \
	  else \
	    echo "msgmerge $$lang failed!"; \
	  fi; \
	  cp $(srcdir)/xml/*.xml.in $(srcdir)/$$lang/; \
	  cp $(srcdir)/intl/$$lang.po $(srcdir)/$$lang/; \
	  getxml-merge -i $(srcdir)/site.xsl.in -p $(srcdir)/$$lang/$$lang.po -o $(srcdir)/$$lang/$$lang.xsl; \
	  for file in $(srcdir)/$$lang/*.xml.in; do \
	    filename=`echo $$file | sed 's/\.xml.in$$//'`; \
	    getxml-merge -i $$file -p $(srcdir)/$$lang/$$lang.po -o $$filename.xml; \
	    echo "getxml-merge $$file ...ok"; \
	    xsltproc $(srcdir)/$$lang/$$lang.xsl $$filename.xml > $$filename.html; \
	    echo "xsltproc $$filename.xml ...ok"; \
	  done; \
	  cp $(srcdir)/$$lang/nouvelles.html $(srcdir)/$$lang/index.html; \
	  rm $(srcdir)/$$lang/*.xml.in; \
	done
