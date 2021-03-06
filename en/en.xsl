<?xml version="1.0" encoding="iso-8859-1"?>
<!-- ********************************************************************** -->
<!-- Type de document - Document type -->
<!-- ********************************************************************** -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" encoding="iso-8859-1" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" indent="yes"/>
<!-- doctype-public="-//W3C//DTD HTML 4.0 Transitional//EN" -->
<!-- doctype-system="http://www.w3.org/TR/REC-html40/loose.dtd" -->
<!-- ********************************************************************** -->
<!-- Internationalisation - Internationalization -->
<!-- ********************************************************************** -->
  <xsl:param name="lang" select="'en'"/>
  <xsl:param name="intl-version" select="'Version'"/>
  <xsl:param name="intl-realise-avec" select="'Realised with '"/>
  <xsl:param name="intl-icones-du" select="'Icons of '"/>
  <xsl:param name="intl-avec-la-fameuse-inspiration-de" select="'with the famous inspiration of '"/>
  <xsl:param name="intl-webmestre" select="'Webmaster'"/>
  <xsl:param name="intl-site-heberge-par" select="'Site hosted at '"/>
<!-- ********************************************************************** -->
<!-- Variable globales - Globals variables -->
<!-- ********************************************************************** -->
  <xsl:param name="version">1.0.22</xsl:param>
  <xsl:param name="version-date">31/08/2001 15:00</xsl:param>
<!-- ********************************************************************** -->
<!-- Page -->
<!-- ********************************************************************** -->
  <xsl:template match="page">
    <html>
<!-- En-t?te - Header -->
      <head>
        <title>ToutDoux - <xsl:value-of select="@nom"/></title>
        <link rel="stylesheet" type="text/css" href="../style.css"/>
        <link rel="SHORTCUT ICON" href="../zimag/favicon.ico"/>
        <meta name="author" content="Philippe Roy &lt;ph_roy@toutdoux.org&gt;"/>
        <meta name="generators" content="GNU Emacs, The GIMP, xsltproc, GNU Make, gettext, getxml"/>
        <meta name="keywords" content="ToutDoux, GNOME, XML, GNU/Linux, GNU"/>
      </head>
      <body class="texte_concept">
<!-- Images -->
        <script type="text/javascript" language="Javascript">
          <xsl:comment>
    img0 = new Image();
    img0.src =&quot;../zimag/nouvelles-flou.png&quot;;
    img1 = new Image();
    img1.src =&quot;../zimag/encours-flou.png&quot;;
    img1a = new Image();
    img1a.src =&quot;../zimag/greffons-flou.png&quot;;
    img2 = new Image();
    img2.src =&quot;../zimag/telechargement-flou.png&quot;;
    img3 = new Image();
    img3.src =&quot;../zimag/documentation-flou.png&quot;;
    img4 = new Image();
    img4.src =&quot;../zimag/capture-flou.png&quot;;
    img5 = new Image();
    img5.src =&quot;../zimag/devel-flou.png&quot;;
    img6 = new Image();
    img6.src =&quot;../zimag/bugzilla-flou.png&quot;;
    img7 = new Image();
    img7.src =&quot;../zimag/idees-flou.png&quot;;
    img8 = new Image();
    img8.src =&quot;../zimag/taches-flou.png&quot;;
    img9 = new Image();
    img9.src =&quot;../zimag/autres-flou.png&quot;;
    img10 = new Image();
    img10.src =&quot;../zimag/vide-flou.png&quot;;
    img11 = new Image();
    img11.src =&quot;../zimag/changelog-flou.png&quot;;
    img12 = new Image();
    img12.src =&quot;../zimag/toutdoux-flou.png&quot;;
    img13 = new Image();
    img13.src =&quot;../zimag/list-flou.png&quot;;
    img14 = new Image();
    img14.src =&quot;../zimag/archive1-flou.png&quot;;
    img15 = new Image();
    img15.src =&quot;../zimag/annonce-flou.png&quot;;
    img16 = new Image();
    img16.src =&quot;../zimag/archive2-flou.png&quot;;
    img17 = new Image();
    img17.src =&quot;../zimag/bugs-flou.png&quot;;
    img18 = new Image();
    img18.src =&quot;../zimag/archive3-flou.png&quot;;
  </xsl:comment>
        </script>
<!-- Menu -->
        <a name="top"/>
        <xsl:apply-templates select="document('menu.xml')">
          <xsl:with-param name="id-page">
            <xsl:value-of select="@id"/>
          </xsl:with-param>
        </xsl:apply-templates>
<!-- Sous-titre - Sub-title -->
        <table border="0" width="100%" height="80" cellspacing="0" cellpadding="4">
          <tr align="right">
            <td>
              <img src="{@id}.png"/>
            </td>
          </tr>
          <tr>
            <td>
              <br/>
            </td>
          </tr>
        </table>
<!-- Corps - Body -->
        <xsl:apply-templates/>
<!-- Langues - Languages -->
        <table border="0" width="100%" cellspacing="0" cellpadding="4">
          <tr>
            <td align="center">
              <a href="#top">
                <img name="barre" border="0" src="../zimag/barre.png" alt=""/>
              </a>
            </td>
          </tr>
          <tr>
            <td class="body-text" align="center"> | 
      <a class="lien" href="../en/{@id}.html">English</a> |
      <a class="lien" href="../fr/{@id}.html">Fran&#231;ais</a> |
    </td>
          </tr>
        </table>
<!-- Pied de page - Footer -->
        <br/>
        <table border="0" width="100%" cellspacing="0" cellpadding="0">
          <tr>
            <td class="body-text"><xsl:value-of select="$intl-version"/> : <xsl:value-of select="$version"/> ( <xsl:value-of select="$version-date"/> ) | 
      <a class="lien" href="{@id}.xml">XML</a> | 
      <a class="lien" href="{$lang}.xsl">XSL</a> | 
      <a class="lien" href="{$lang}.po">PO</a> | 
      <a class="lien" href="../style.css">CSS</a> |
      <a class="lien" href="../ChangeLog">ChangeLog</a> |
      <a class="lien" href="http://savannah.gnu.org/cgi-bin/viewcvs/software/toutdoux/?cvsroot=www.gnu.org">CVS</a> |
    </td>
          </tr>
          <tr>
            <td class="body-text"><xsl:value-of select="$intl-realise-avec"/><a class="lien" href="http://www.gnu.org/software/emacs/">GNU Emacs</a>,
      <a class="lien" href="http://www.gimp.org">The GIMP</a>,
      <a class="lien" href="http://www.xmlsoft.org/XSLT/">xsltproc</a>,
      <a class="lien" href="http://www.gnu.org/software/make/">GNU Make</a>,
      <a class="lien" href="http://www.gnu.org/software/gettext/">gettext</a>,
      <a class="lien" href="ftp://toutdoux.sourceforge.net/pub/toutdoux/">getxml</a>.</td>
          </tr>
          <tr>
            <td class="body-text"><xsl:value-of select="$intl-icones-du"/><a class="lien" href="http://gnome-icons.sourceforge.net/">GISR (Gnome Icon Status Report) </a><xsl:value-of select="$intl-avec-la-fameuse-inspiration-de"/><a class="lien" href="http://tigert.gimp.org/">Tigert (Tuomas Kuosmanen)</a>.
    </td>
          </tr>
          <tr>
            <td class="body-text"><xsl:value-of select="$intl-webmestre"/> : <a class="lien" href="mailto:ph_roy@toutdoux.org">Philippe Roy &lt;ph_roy@toutdoux.org&gt;</a></td>
          </tr>
          <tr>
            <td class="body-text"><xsl:value-of select="$intl-site-heberge-par"/><a class="lien" href="http://www.gnu.org">The Free Software Fondation</a>.</td>
          </tr>
          <tr>
            <td class="body-text"> Copyright (C) 2000-2001 Philippe Roy </td>
          </tr>
        </table>
      </body>
    </html>
  </xsl:template>
<!-- ********************************************************************** -->
<!-- Menu -->
<!-- ********************************************************************** -->
<!-- Menu racine - Root menu -->
  <xsl:template match="menu">
    <table name="top" height="10" width="95%" border="0" cellspacing="0" cellpadding="0">
      <tr align="center">
<!-- Titre - Title -->
        <td>
          <table border="0" width="400" height="150" cellspacing="0" cellpadding="0">
            <tr align="left">
              <td valign="center">
                <img src="titre.png" alt="ToutDoux"/>
              </td>
            </tr>
          </table>
        </td>
<!-- Menu -->
        <td>
          <table border="0" width="400" cellspacing="0" cellpadding="0">
            <tr align="right">
              <xsl:apply-templates>
                <xsl:with-param name="id-page">
                  <xsl:value-of select="$id-page"/>
                </xsl:with-param>
              </xsl:apply-templates>
            </tr>
          </table>
        </td>
      </tr>
    </table>
  </xsl:template>
<!-- Menu groupe - Group menu -->
  <xsl:template match="menu-groupe">
    <td>
      <table height="150" width="48" border="0" cellspacing="0" cellpadding="0">
        <xsl:apply-templates>
          <xsl:with-param name="id-page">
            <xsl:value-of select="$id-page"/>
          </xsl:with-param>
        </xsl:apply-templates>
      </table>
    </td>
  </xsl:template>
<!-- Menu item - Item menu -->
  <xsl:template match="menu-item">
    <xsl:choose>
      <xsl:when test="$id-page = @id">
        <tr>
          <td align="center" class="menu-titre">
            <img width="48" height="48" border="0" alt="" name="{@id}" src="../zimag/{@id}-eclaire.png"/>
            <br/>
            <xsl:value-of select="@nom"/>
          </td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td align="center" class="menu-titre">
            <a href="{@href}">
              <xsl:attribute name="onmouseover">img<xsl:value-of select="@id"/>.src='../zimag/<xsl:value-of select="@id"/>-flou.png'</xsl:attribute>
              <xsl:attribute name="onmouseout">img<xsl:value-of select="@id"/>.src='../zimag/<xsl:value-of select="@id"/>.png'</xsl:attribute>
              <img width="48" height="48" border="0" alt="" name="img{@id}" src="../zimag/{@id}.png"/>
              <br/>
              <xsl:value-of select="@nom"/>
            </a>
          </td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates/>
  </xsl:template>
<!-- ********************************************************************** -->
<!-- Usuels - Usuals -->
<!-- ********************************************************************** -->
<!-- Cadre - Frame -->
  <xsl:template match="cadre">
    <table border="0" width="100%" cellspacing="0" cellpadding="0">
      <tr>
        <td>
          <table border="0" width="100%" cellspacing="0" cellpadding="4">
            <tr>
              <td width="10%"/>
              <td class="cadre-titre">
                <table border="0" width="100%" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="10"/>
                    <td>
                      <xsl:value-of select="@nom"/>
                    </td>
                  </tr>
                </table>
              </td>
            </tr>
          </table>
        </td>
      </tr>
      <tr>
        <td/>
      </tr>
      <tr>
        <td/>
      </tr>
      <tr>
        <td/>
      </tr>
      <tr>
        <td class="cadre">
          <table border="0" width="100%" cellspacing="0" cellpadding="2">
            <xsl:apply-templates/>
          </table>
        </td>
      </tr>
      <tr>
        <td>
          <br/>
        </td>
      </tr>
    </table>
  </xsl:template>
<!-- Pointeur -->
  <xsl:template match="pointeur">
    <tr>
      <td class="cadre-texte">
        <xsl:value-of select="@avant"/>
        <a class="lien" href="{@href}">
          <xsl:value-of select="@nom"/>
        </a>
        <xsl:value-of select="@texte"/>
        <xsl:apply-templates/>
      </td>
    </tr>
  </xsl:template>
<!-- Texte - Text -->
  <xsl:template match="texte">
    <tr>
      <td class="cadre-texte">
        <xsl:value-of select="@texte"/>
      </td>
    </tr>
    <xsl:apply-templates/>
  </xsl:template>
<!-- Commande - Command -->
  <xsl:template match="commande-entete">
    <tr>
      <td colspan="2" class="cadre-texte">
        <xsl:value-of select="@texte"/>
      </td>
    </tr>
  </xsl:template>
  <xsl:template match="commande">
    <tr>
      <td class="cadre-texte">
        <xsl:value-of select="@commande"/>
      </td>
      <td class="cadre-texte">
        <xsl:value-of select="@texte"/>
      </td>
    </tr>
    <xsl:apply-templates/>
  </xsl:template>
<!-- ********************************************************************** -->
<!-- Document -->
<!-- ********************************************************************** -->
<!-- Document racine - Root document -->
  <xsl:template match="document">
    <tr>
      <td class="cadre-texte">
        <xsl:value-of select="@nom"/>
        <xsl:apply-templates/>
      </td>
    </tr>
  </xsl:template>
<!-- Document format - Format document -->
  <xsl:template match="document-format">
  [ <xsl:value-of select="@nom"/> ] | <xsl:apply-templates/>
</xsl:template>
<!-- Document groupe - Group document -->
  <xsl:template match="document-groupe"><xsl:value-of select="@nom"/> | <xsl:apply-templates/></xsl:template>
<!-- Document item - Item document -->
  <xsl:template match="document-item"><a class="lien" href="{@href}"><xsl:value-of select="@nom"/></a> |
  <xsl:apply-templates/></xsl:template>
<!-- ********************************************************************** -->
<!-- Capture - Shot -->
<!-- ********************************************************************** -->
<!-- Capture racine - Root shot -->
  <xsl:template match="capture">
    <tr>
      <td class="cadre-texte">
        <table border="0" width="100%" cellspacing="0" cellpadding="4">
          <tr>
            <td>
              <a href="{@href}">
                <img border="0" src="{@chtit}" alt="{@nom}"/>
              </a>
            </td>
            <td class="cadre-texte" align="rigth" width="100%">
              <table border="0" width="100%" cellspacing="0" cellpadding="4">
                <xsl:apply-templates/>
              </table>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </xsl:template>
<!-- Capture texte - Text shot -->
  <xsl:template match="capture-texte">
    <tr>
      <td>
        <xsl:value-of select="@texte"/>
      </td>
    </tr>
    <xsl:apply-templates/>
  </xsl:template>
<!-- ********************************************************************** -->
<!-- FTP - CVS -->
<!-- ********************************************************************** -->
<!-- FTP -->
  <xsl:template match="ftp">
    <table border="0" width="100%" cellspacing="0" cellpadding="0">
      <tr>
        <xsl:apply-templates/>
      </tr>
      <tr>
        <td>
          <br/>
        </td>
      </tr>
      <tr>
        <td>
          <br/>
        </td>
      </tr>
    </table>
  </xsl:template>
<!-- Groupe - Group -->
  <xsl:template match="ftp-groupe">
    <td width="100%" valign="top">
      <table border="0" width="100%" cellspacing="0" cellpadding="0">
        <tr>
          <td width="10%"/>
          <td class="cadre-titre">
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <td width="10"/>
                <td>
                  <xsl:value-of select="@nom"/>
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td class="cadre">
            <table border="0" width="100%" cellspacing="0" cellpadding="4">
              <xsl:apply-templates/>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </xsl:template>
<!-- Fichier - File -->
  <xsl:template match="ftp-fichier">
    <tr>
      <td class="cadre-texte"><a class="lien" href="{@href}"><xsl:value-of select="@nom"/></a>
      [ <xsl:value-of select="@taille"/> ]
      <xsl:apply-templates/></td>
    </tr>
  </xsl:template>
<!-- R?pertoire - Directory -->
  <xsl:template match="ftp-repertoire">
    <tr>
      <td class="cadre-texte">
        <a class="lien" href="{@href}">
          <xsl:value-of select="@href"/>
        </a>
        <xsl:apply-templates/>
      </td>
    </tr>
  </xsl:template>
<!-- ********************************************************************** -->
<!-- Nouvelle - News -->
<!-- ********************************************************************** -->
<!-- Nouvelle - News -->
  <xsl:template match="nouvelle">
    <table border="0" width="100%" cellspacing="0" cellpadding="4" valign="top">
      <tr>
        <xsl:apply-templates/>
      </tr>
    </table>
  </xsl:template>
<!-- Nouvelle liste - News list -->
  <xsl:template match="nouvelle-list">
    <td valign="top">
      <table border="0" width="100%" cellspacing="0" cellpadding="0">
        <xsl:apply-templates/>
      </table>
    </td>
  </xsl:template>
<!-- Nouvelle Cadre - News frame -->
  <xsl:template match="nouvelle-cadre">
    <tr>
      <td>
        <table border="0" width="100%" cellspacing="0" cellpadding="4">
          <tr>
            <td width="10%"/>
            <td class="cadre-titre">
              <table border="0" width="100%" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="10"/>
                  <td>
                    <xsl:value-of select="@nom"/>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </td>
    </tr>
    <tr>
      <td/>
    </tr>
    <tr>
      <td/>
    </tr>
    <tr>
      <td/>
    </tr>
    <tr>
      <td class="cadre">
        <table border="0" width="100%" cellspacing="0" cellpadding="2">
          <xsl:apply-templates/>
        </table>
      </td>
    </tr>
    <tr>
      <td>
        <br/>
      </td>
    </tr>
  </xsl:template>
<!-- Nouvelle date - News date -->
  <xsl:template match="nouvelle-date">
    <tr>
      <td class="cadre-texte">
        <table border="0" width="100%" cellspacing="0" cellpadding="4">
          <tr>
            <td class="date" valign="top"><b><xsl:value-of select="@date"/></b>:</td>
            <td class="cadre-texte" align="rigth" width="100%">
              <table border="0" width="100%" cellspacing="0" cellpadding="0">
                <xsl:apply-templates/>
              </table>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </xsl:template>
<!-- Nouvelle date item - News date item -->
  <xsl:template match="nouvelle-date-item">
    <tr>
      <td>
        <xsl:value-of select="@texte"/>
      </td>
    </tr>
    <xsl:apply-templates/>
  </xsl:template>
<!-- Nouvelle menu - News menu -->
  <xsl:template match="nouvelle-menu">
    <td valign="top">
      <table border="0" width="100%" cellspacing="0" cellpadding="4">
        <tr>
          <td>
            <xsl:apply-templates/>
          </td>
        </tr>
      </table>
    </td>
  </xsl:template>
<!-- Nouvelle menu item - News menu item -->
  <xsl:template match="nouvelle-menu-item">
    <td class="cadre-texte">
      <table border="0" cellspacing="0" cellpadding="0" align="center">
        <tr>
          <td align="center" class="menu-titre">
            <a href="{@href}">
              <xsl:attribute name="onmouseover">img<xsl:value-of select="@id"/>.src='../zimag/<xsl:value-of select="@id"/>-flou.png'</xsl:attribute>
              <xsl:attribute name="onmouseout">img<xsl:value-of select="@id"/>.src='../zimag/<xsl:value-of select="@id"/>.png'</xsl:attribute>
              <img width="48" height="48" border="0" alt="" name="img{@id}" src="../zimag/{@id}.png"/>
              <br/>
              <xsl:value-of select="@nom"/>
            </a>
          </td>
        </tr>
      </table>
    </td>
    <xsl:apply-templates/>
  </xsl:template>
<!-- ********************************************************************** -->
<!-- Techniques - Technics -->
<!-- ********************************************************************** -->
<!-- Techniques groupe - Technics group -->
  <xsl:template match="techniques-groupe">
    <tr>
      <td class="cadre-texte">
        <br/>
      </td>
    </tr>
    <tr>
      <td class="cadre-texte"><xsl:value-of select="@texte"/> |
    <xsl:apply-templates/></td>
    </tr>
  </xsl:template>
<!-- Techniques item - Technics item -->
  <xsl:template match="techniques-item"><a class="lien" href="{@href}"><xsl:value-of select="@nom"/></a> |
  <xsl:apply-templates/></xsl:template>
<!-- ********************************************************************** -->
<!-- Projet - Project -->
<!-- ********************************************************************** -->
<!-- Projet - Project -->
  <xsl:template match="projet">
    <tr>
      <td class="cadre-texte">
        <br/>
      </td>
    </tr>
    <xsl:apply-templates/>
  </xsl:template>
<!-- Projet nom - Project name -->
  <xsl:template match="projet-nom">
    <tr>
      <td class="cadre-texte">
        <xsl:value-of select="@texte1"/>
        <a class="lien" href="{@href}">
          <xsl:value-of select="@nom"/>
        </a>
        <xsl:value-of select="@texte2"/>
        <a class="lien" href="{@licence-href}">
          <xsl:value-of select="@licence-nom"/>
        </a>
        <xsl:value-of select="@texte3"/>
      </td>
    </tr>
    <xsl:apply-templates/>
  </xsl:template>
<!-- Projet copyright - Project copyright -->
  <xsl:template match="projet-copyright">
    <tr>
      <td class="cadre-texte">
        <xsl:value-of select="@texte"/>
      </td>
    </tr>
    <xsl:apply-templates/>
  </xsl:template>
</xsl:stylesheet>
