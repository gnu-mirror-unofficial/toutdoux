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
XSLT = xsltproc

all:
	$(XSLT) en.xsl $(srcdir)/nouvelles.xml > $(srcdir)/index.html; \
	$(XSLT) en.xsl $(srcdir)/nouvelles.xml > $(srcdir)/nouvelles.html; \
	$(XSLT) en.xsl $(srcdir)/encours.xml > $(srcdir)/encours.html; \
	$(XSLT) en.xsl $(srcdir)/greffons.xml > $(srcdir)/greffons.html; \
	$(XSLT) en.xsl $(srcdir)/documentation.xml > $(srcdir)/documentation.html; \
	$(XSLT) en.xsl $(srcdir)/captures.xml > $(srcdir)/captures.html; \
	$(XSLT) en.xsl $(srcdir)/telechargement.xml > $(srcdir)/telechargement.html; \
	$(XSLT) en.xsl $(srcdir)/autres.xml > $(srcdir)/autres.html



