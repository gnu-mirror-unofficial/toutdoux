<?xml version="1.0"?>
<database name="" comment="">
  <tables>
    <table name="item" comment="">
      <fields>
        <field name="name" comment="">
          <properties>
            <property name="type" value="varchar(200)"/>
          </properties>
        </field>
        <field name="version" comment="">
          <properties>
            <property name="type" value="varchar(200)"/>
          </properties>
        </field>
        <field name="status" comment="">
          <properties>
            <property name="type" value="varchar(200)"/>
            <property name="default" value="en cours"/>
          </properties>
        </field>
        <field name="size" comment="">
          <properties>
            <property name="type" value="varchar(200)"/>
            <property name="default" value="moyenne"/>
          </properties>
        </field>
        <field name="priority" comment="">
          <properties>
            <property name="type" value="varchar(200)"/>
            <property name="default" value="moyenne"/>
          </properties>
        </field>
        <field name="responsible" comment="">
          <properties>
            <property name="type" value="varchar(200)"/>
          </properties>
        </field>
        <field name="td_id" comment="">
          <properties>
            <property name="type" value="serial"/>
            <property name="constraint" value="primary key"/>
          </properties>
        </field>
        <field name="td_obso" comment="">
          <properties>
            <property name="type" value="bool"/>
            <property name="default" value="f"/>
          </properties>
        </field>
      </fields>
      <rules/>
      <functions/>
    </table>
    <table name="item_tree" comment="">
      <fields>
        <field name="td_id" comment="">
          <properties>
            <property name="type" value="int4"/>
          </properties>
        </field>
        <field name="td_id_parent" comment="">
          <properties>
            <property name="type" value="int4"/>
          </properties>
        </field>
        <field name="td_id_sibling" comment="">
          <properties>
            <property name="type" value="int4"/>
          </properties>
        </field>
      </fields>
      <rules/>
      <functions/>
    </table>
  </tables>
  <mods>
    <mod name="tree" name_param="T&#226;ches" group="" comment="" icon="icon_tasks.png">
      <tables>
        <table name="item" table="">
          <fields>
            <field name="td_id" table_field=""/>
            <field name="td_obso" table_field=""/>
          </fields>
        </table>
        <table name="item_tree" table="">
          <fields>
            <field name="td_id" table_field=""/>
            <field name="td_id_parent" table_field=""/>
            <field name="td_id_sibling" table_field=""/>
          </fields>
        </table>
      </tables>
      <interface>
        <field name="Nom" table_field="name">
          <properties>
            <property name="column size" value="500"/>
            <property name="icon name" value="flash"/>
            <property name="icon visible query" value="TD_CURRENT td_id WHERE (status = &apos;en cours&apos;);"/>
            <property name="icon name" value="package"/>
            <property name="icon visible query" value="TD_CURRENT td_id WHERE (status = &apos;soldee&apos;);"/>
            <property name="icon name" value="new"/>
            <property name="icon visible query" value="TD_CURRENT (lambda);"/>
          </properties>
        </field>
        <field name="Version" table_field="version">
          <properties/>
        </field>
        <field name="Etat" table_field="status">
          <properties>
            <property name="column list item" value="pr&#233;vue,en cours,soldee"/>
          </properties>
        </field>
        <field name="Taille" table_field="size">
          <properties>
            <property name="column list item" value="petite,moyenne,grande"/>
          </properties>
        </field>
        <field name="Priorit&#233;" table_field="priority">
          <properties>
            <property name="column list item" value="faible,moyenne,haute"/>
          </properties>
        </field>
        <field name="Responsable" table_field="responsible">
          <properties/>
        </field>
        <field name="td_id" table_field="td_id">
          <properties/>
        </field>
        <field name="td_obso" table_field="td_obso">
          <properties/>
        </field>
      </interface>
      <bench>
        <field name="Nom" table_field="name">
          <properties>
            <property name="bench refresh query" value="TD_CURRENT name;"/>
            <property name="bench visible query" value="TD_CURRENT td_id;"/>
          </properties>
        </field>
        <field name="Version" table_field="version">
          <properties>
            <property name="bench refresh query" value="TD_CURRENT version;"/>
            <property name="bench visible query" value="TD_CURRENT td_id;"/>
          </properties>
        </field>
        <field name="Etat" table_field="status">
          <properties>
            <property name="bench refresh query" value="TD_CURRENT status;"/>
            <property name="bench visible query" value="TD_CURRENT td_id;"/>
            <property name="bench list item" value="pr&#233;vue,en cours,soldee"/>
          </properties>
        </field>
        <field name="Taille" table_field="size">
          <properties>
            <property name="bench refresh query" value="TD_CURRENT size;"/>
            <property name="bench visible query" value="TD_CURRENT td_id;"/>
            <property name="bench list item" value="petite,moyenne,grande"/>
          </properties>
        </field>
        <field name="Priorit&#233;" table_field="priority">
          <properties>
            <property name="bench refresh query" value="TD_CURRENT priority;"/>
            <property name="bench visible query" value="TD_CURRENT td_id;"/>
            <property name="bench list item" value="faible,moyenne,haute"/>
          </properties>
        </field>
        <field name="Responsable" table_field="responsible">
          <properties>
            <property name="bench refresh query" value="TD_CURRENT responsible;"/>
            <property name="bench visible query" value="TD_CURRENT td_id;"/>
          </properties>
        </field>
      </bench>
      <etabliste/>
      <menu/>
    </mod>
  </mods>
  <datatables>
    <datatable table="item">
      <items>
        <item field0="Donn&#233;es" field1="" field2="en cours" field3="moyenne" field4="moyenne" field5="" field6="1" field7="f"/>
        <item field0="Base de donn&#233;es" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="2" field7="f"/>
        <item field0="Structure hOpla" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="3" field7="f"/>
        <item field0="XML" field1="" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="4" field7="f"/>
        <item field0="Base XML1" field1="1.1.9" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="5" field7="f"/>
        <item field0="Base XML2" field1="1.2.5" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="6" field7="f"/>
        <item field0="Encodage : j&apos;ai pas vraiment compris !" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="7" field7="f"/>
        <item field0="Champs : hopla_id : identificateur : cl&#233; primaire" field1="1.2.2" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="8" field7="f"/>
        <item field0="Champs : hopla_parent : pater" field1="1.2.2" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="9" field7="f"/>
        <item field0="Champs : hopla_sibling : fr&#233;ro" field1="1.2.2" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="10" field7="f"/>
        <item field0="Champs : hopla_obso : donn&#233;e obsol&#232;te" field1="1.2.2" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="11" field7="f"/>
        <item field0="Rafra&#238;chissement des donn&#233;es avec hOpla" field1="1.2.4" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="12" field7="f"/>
        <item field0="Mettre la DTD" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="13" field7="f"/>
        <item field0="Enregistrer la structure" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="14" field7="f"/>
        <item field0="Enregistrer les champs des tables de donn&#233;es dans l&apos;ordre de la structure" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="15" field7="f"/>
        <item field0="R&#233;seau des donn&#233;es" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="16" field7="f"/>
        <item field0="Administration base de donn&#233;es" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="17" field7="f"/>
        <item field0="Cr&#233;er - supprimer base" field1="1.2.2" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="18" field7="f"/>
        <item field0="Cr&#233;er - supprimer utilisateur" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="19" field7="f"/>
        <item field0="Passer par un XML" field1="1.2.4" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="20" field7="f"/>
        <item field0="Serveur local" field1="" field2="en cours" field3="moyenne" field4="moyenne" field5="" field6="21" field7="f"/>
        <item field0="Requ&#232;tes" field1="" field2="en cours" field3="moyenne" field4="moyenne" field5="" field6="22" field7="f"/>
        <item field0="Vues" field1="" field2="en cours" field3="moyenne" field4="moyenne" field5="" field6="23" field7="f"/>
        <item field0="R&#232;gles" field1="" field2="en cours" field3="moyenne" field4="moyenne" field5="" field6="24" field7="f"/>
        <item field0="Historique des transactions" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="25" field7="f"/>
        <item field0="Archivage" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="26" field7="f"/>
        <item field0="Multi-t&#226;che" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="27" field7="f"/>
        <item field0="Maj donn&#233;es locales" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="28" field7="f"/>
        <item field0="Maj donn&#233;es distantes" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="29" field7="f"/>
        <item field0="Permission" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="30" field7="f"/>
        <item field0="Gestionnaire" field1="" field2="en cours" field3="moyenne" field4="moyenne" field5="" field6="31" field7="f"/>
        <item field0="Int&#233;gration de PostgreSQL" field1="" field2="en cours" field3="moyenne" field4="moyenne" field5="" field6="32" field7="f"/>
        <item field0="mode interne (lib pgsql)" field1="" field2="en cours" field3="moyenne" field4="moyenne" field5="" field6="33" field7="f"/>
        <item field0="mode externe (hOpla)" field1="" field2="en cours" field3="moyenne" field4="moyenne" field5="" field6="34" field7="f"/>
        <item field0="GNU SQL" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="35" field7="f"/>
        <item field0="gdbm" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="36" field7="f"/>
        <item field0="Int&#233;gration de MySQL" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="37" field7="f"/>
        <item field0="Serveur distant" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="38" field7="f"/>
        <item field0="Serveur Sql - serveur Apache" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="39" field7="f"/>
        <item field0="Historique des transactions" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="40" field7="f"/>
        <item field0="Etat des connections" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="41" field7="f"/>
        <item field0="Archivage" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="42" field7="f"/>
        <item field0="Modules m&#233;tier" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="43" field7="f"/>
        <item field0="Gestion de projet (g&#233;n&#233;rique)" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="44" field7="f"/>
        <item field0="Concept - M&#233;tier" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="45" field7="f"/>
        <item field0="Documentation" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="46" field7="f"/>
        <item field0="Titre" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="47" field7="f"/>
        <item field0="Strat&#233;gie" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="48" field7="f"/>
        <item field0="Hypoth&#232;ses" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="49" field7="f"/>
        <item field0="Objectifs" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="50" field7="f"/>
        <item field0="R&#233;sultat" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="51" field7="f"/>
        <item field0="Temps" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="52" field7="f"/>
        <item field0="Ant&#233;riorit&#233;s - Pert" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="53" field7="f"/>
        <item field0="Planification - Gantt" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="54" field7="f"/>
        <item field0="Gestion des versions" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="55" field7="f"/>
        <item field0="Responsable" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="56" field7="f"/>
        <item field0="Planification charge" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="57" field7="f"/>
        <item field0="Courriel" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="58" field7="f"/>
        <item field0="Budget" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="59" field7="f"/>
        <item field0="Planification investissement" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="60" field7="f"/>
        <item field0="Planification productivitee" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="61" field7="f"/>
        <item field0="Ressources" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="62" field7="f"/>
        <item field0="Planification charge" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="63" field7="f"/>
        <item field0="Objectifs - Indicateurs" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="64" field7="f"/>
        <item field0="D&#233;finition" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="65" field7="f"/>
        <item field0="Gestion" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="66" field7="f"/>
        <item field0="Risque" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="67" field7="f"/>
        <item field0="Pert" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="68" field7="f"/>
        <item field0="Gantt" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="69" field7="f"/>
        <item field0="Agenda" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="70" field7="f"/>
        <item field0="Personne et groupe" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="71" field7="f"/>
        <item field0="Budget" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="72" field7="f"/>
        <item field0="Gestion de projet informatique" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="73" field7="f"/>
        <item field0="Plan d&apos;action : Fossile" field1="1.1.4" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="74" field7="f"/>
        <item field0="Ic&#244;ne en fonction de l&apos;avancement" field1="1.1.4" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="75" field7="f"/>
        <item field0="Bugs" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="76" field7="f"/>
        <item field0="Gravit&#233; - r&#233;p&#233;tabilit&#233; - signal (AMDEC)" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="77" field7="f"/>
        <item field0="Priorit&#233; : faible - moyen - haute" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="78" field7="f"/>
        <item field0="Difficult&#233; de r&#233;solution : faible - moyen - haute" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="79" field7="f"/>
        <item field0="Compr&#233;hension : pas compris - compris" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="80" field7="f"/>
        <item field0="Frontal du site gnome-bug" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="81" field7="f"/>
        <item field0="Source : interne, correspondant" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="82" field7="f"/>
        <item field0="Gnats ?" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="83" field7="f"/>
        <item field0="Liste des regressions" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="84" field7="f"/>
        <item field0="Priorite" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="85" field7="f"/>
        <item field0="Nouvelles, ChangeLog et TODO" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="86" field7="f"/>
        <item field0="Version : #, source, distribution, stable/devel" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="87" field7="f"/>
        <item field0="Auteurs, remerciements et supporters" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="88" field7="f"/>
        <item field0="Proc&#233;dure" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="89" field7="f"/>
        <item field0="Documentation" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="90" field7="f"/>
        <item field0="Titre" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="91" field7="f"/>
        <item field0="Strat&#233;gie" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="92" field7="f"/>
        <item field0="D&#233;finition (proc&#233;dure qualite)" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="93" field7="f"/>
        <item field0="Formulaire" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="94" field7="f"/>
        <item field0="Etapes" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="95" field7="f"/>
        <item field0="Responsable" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="96" field7="f"/>
        <item field0="Courriel" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="97" field7="f"/>
        <item field0="Planification charge" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="98" field7="f"/>
        <item field0="Budget" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="99" field7="f"/>
        <item field0="Planification frais" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="100" field7="f"/>
        <item field0="Planification productivite" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="101" field7="f"/>
        <item field0="Ressources" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="102" field7="f"/>
        <item field0="Planification charge" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="103" field7="f"/>
        <item field0="Objectifs - Indicateurs" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="104" field7="f"/>
        <item field0="D&#233;finition" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="105" field7="f"/>
        <item field0="Gestion" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="106" field7="f"/>
        <item field0="Coq (co&#251;t de non-qualite)" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="107" field7="f"/>
        <item field0="Modules g&#233;n&#233;riques" field1="" field2="en cours" field3="moyenne" field4="moyenne" field5="" field6="108" field7="f"/>
        <item field0="Arbre : Arborimatique" field1="1.2.5" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="109" field7="f"/>
        <item field0="Import-export" field1="" field2="en cours" field3="moyenne" field4="moyenne" field5="" field6="110" field7="f"/>
        <item field0="csv" field1="1.2.5" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="111" field7="f"/>
        <item field0="Option sur s&#233;parateur" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="112" field7="f"/>
        <item field0="XML g&#233;n&#233;rique" field1="" field2="en cours" field3="moyenne" field4="moyenne" field5="" field6="113" field7="f"/>
        <item field0="Script" field1="1.2.5" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="114" field7="f"/>
        <item field0="Solveur" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="115" field7="f"/>
        <item field0="Frontal pour Octave" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="116" field7="f"/>
        <item field0="Frontal pour units" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="117" field7="f"/>
        <item field0="Grapheur" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="118" field7="f"/>
        <item field0="Frontal pour GNUPlots" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="119" field7="f"/>
        <item field0="Frontal pour Guppy" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="120" field7="f"/>
        <item field0="Requ&#234;tes" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="121" field7="f"/>
        <item field0="Recherche" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="122" field7="f"/>
        <item field0="Tri" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="123" field7="f"/>
        <item field0="Construire" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="124" field7="f"/>
        <item field0="Impression" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="125" field7="f"/>
        <item field0="LaTeX" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="126" field7="f"/>
        <item field0="G&#233;n&#233;rateur de classe" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="127" field7="f"/>
        <item field0="Frontal pour LaTeX" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="128" field7="f"/>
        <item field0="Frontal pour dvips" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="129" field7="f"/>
        <item field0="Frontal pour ggv" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="130" field7="f"/>
        <item field0="HTML Jade" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="131" field7="f"/>
        <item field0="Frontal pour Jade" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="132" field7="f"/>
        <item field0="XLST ?" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="133" field7="f"/>
        <item field0="Editeur" field1="" field2="en cours" field3="moyenne" field4="moyenne" field5="" field6="134" field7="f"/>
        <item field0="Emacs" field1="" field2="en cours" field3="moyenne" field4="moyenne" field5="" field6="135" field7="f"/>
        <item field0="Courriel" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="136" field7="f"/>
        <item field0="Frontal pour Mutt" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="137" field7="f"/>
        <item field0="Frontal pour Sendmail" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="138" field7="f"/>
        <item field0="Frontal pour Fetchmail" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="139" field7="f"/>
        <item field0="Edition des gabarits" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="140" field7="f"/>
        <item field0="Base" field1="1.2.2" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="141" field7="f"/>
        <item field0="Constantes de greffon" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="142" field7="f"/>
        <item field0="Nom : name" field1="1.2.5" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="143" field7="f"/>
        <item field0="Ic&#244;ne : icon" field1="1.2.5" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="144" field7="f"/>
        <item field0="Visible : visible" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="145" field7="f"/>
        <item field0="Mode d&apos;execution (debug - conception - production)" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="146" field7="f"/>
        <item field0="Constantes de champs" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="147" field7="f"/>
        <item field0="Valeur" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="148" field7="f"/>
        <item field0="Valeur par d&#233;faut : value_default" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="149" field7="f"/>
        <item field0="Edition des propri&#233;tes" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="150" field7="f"/>
        <item field0="Non &#233;ditable : prop_uneditable" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="151" field7="f"/>
        <item field0="Visible : prop_visible" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="152" field7="f"/>
        <item field0="Collone" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="153" field7="f"/>
        <item field0="Taille collone : column_size" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="154" field7="f"/>
        <item field0="Taille de la colonne automatique : column_autosize" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="155" field7="f"/>
        <item field0="Colonne visible : column_visible" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="156" field7="f"/>
        <item field0="Relations entre tables" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="157" field7="f"/>
        <item field0="Tri alpha et anti-alpha" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="158" field7="f"/>
        <item field0="Tri ordre chronologique" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="159" field7="f"/>
        <item field0="Exceptions" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="160" field7="f"/>
        <item field0="Inclusions" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="161" field7="f"/>
        <item field0="Liste de choix pour la conception (table et champs)" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="162" field7="f"/>
        <item field0="Interdire les champs avec des majuscules" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="163" field7="f"/>
        <item field0="Edition du gabarit &#224; la volee" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="164" field7="f"/>
        <item field0="Fichier" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="165" field7="f"/>
        <item field0="Distants" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="166" field7="f"/>
        <item field0="Lecture par wget" field1="1.2.2" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="167" field7="f"/>
        <item field0="Ecriture par ftp" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="168" field7="f"/>
        <item field0="Ssh" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="169" field7="f"/>
        <item field0="Signets" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="170" field7="f"/>
        <item field0="Classeur" field1="1.2.4" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="171" field7="f"/>
        <item field0="Fichier - r&#233;pertoire" field1="1.2.4" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="172" field7="f"/>
        <item field0="R&#233;cents" field1="1.1.8" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="173" field7="f"/>
        <item field0="Base" field1="1.1.7" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="174" field7="f"/>
        <item field0="Suppression des obsol&#232;tes" field1="1.1.8" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="175" field7="f"/>
        <item field0="Url" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="176" field7="f"/>
        <item field0="Base" field1="1.2.2" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="177" field7="f"/>
        <item field0="D&#233;finir le nom du fichier local ou fichier temporaire" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="178" field7="f"/>
        <item field0="Base de donn&#233;es" field1="1.2.2" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="179" field7="f"/>
        <item field0="Base" field1="1.2.2" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="180" field7="f"/>
        <item field0="Refonte" field1="1.2.4" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="181" field7="f"/>
        <item field0="D&#233;finir le nom du fichier local ou fichier temporaire" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="182" field7="f"/>
        <item field0="Sens des signets inverse" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="183" field7="f"/>
        <item field0="R&#233;pertoire de configuration (greffons, ...)" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="184" field7="f"/>
        <item field0="Fichier de configuration" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="185" field7="f"/>
        <item field0="Format XML non plat" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="186" field7="f"/>
        <item field0="Demarrage" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="187" field7="f"/>
        <item field0="base" field1="1.2.1" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="188" field7="f"/>
        <item field0="Gestion des versions" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="189" field7="f"/>
        <item field0="RCS" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="190" field7="f"/>
        <item field0="CVS" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="191" field7="f"/>
        <item field0="Fen&#234;tre : Attention &#233;crasement de fichier" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="192" field7="f"/>
        <item field0="Revenir sur le fichier" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="193" field7="f"/>
        <item field0="Sauvegarde" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="194" field7="f"/>
        <item field0="Sauvegarde op&#233;ration" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="195" field7="f"/>
        <item field0="Sauvegarde temps" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="196" field7="f"/>
        <item field0="V&#233;rification de la sauvegarde" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="197" field7="f"/>
        <item field0="Option Zippage des fichiers" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="198" field7="f"/>
        <item field0="Archivage" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="199" field7="f"/>
        <item field0="Document sur plusieurs fichiers" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="200" field7="f"/>
        <item field0="Base" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="201" field7="f"/>
        <item field0="Dnd" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="202" field7="f"/>
        <item field0="Copier des vues compl&#232;tes entre fichiers" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="203" field7="f"/>
        <item field0="Diviser un fichier en plusieurs" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="204" field7="f"/>
        <item field0="Lecture partielle - lecture compl&#232;te " field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="205" field7="f"/>
        <item field0="Ouverture des fichiers + propre " field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="206" field7="f"/>
        <item field0="Travail en groupe" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="207" field7="f"/>
        <item field0="Structure" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="208" field7="f"/>
        <item field0="Type d&apos;op&#233;ration" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="209" field7="f"/>
        <item field0="Auteur" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="210" field7="f"/>
        <item field0="Utilisateur" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="211" field7="f"/>
        <item field0="Date" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="212" field7="f"/>
        <item field0="R&#233;sume" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="213" field7="f"/>
        <item field0="R&#233;seau des flux de donn&#233;es" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="214" field7="f"/>
        <item field0="Comme le solveur (cependant le reponsable est un robot)" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="215" field7="f"/>
        <item field0="Lecteur de mail" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="216" field7="f"/>
        <item field0="D&#233;finition de fichier XML joint " field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="217" field7="f"/>
        <item field0="Rappatriement" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="218" field7="f"/>
        <item field0="Editeur" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="219" field7="f"/>
        <item field0="Lecteur de forum" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="220" field7="f"/>
        <item field0="Web (Html)" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="221" field7="f"/>
        <item field0="Usernet" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="222" field7="f"/>
        <item field0="Interface utilisateur" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="223" field7="f"/>
        <item field0="Ligne de commande" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="224" field7="f"/>
        <item field0="Fichier" field1="1.1.4" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="225" field7="f"/>
        <item field0="Mode d&apos;execution" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="226" field7="f"/>
        <item field0="Production" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="227" field7="f"/>
        <item field0="Conception" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="228" field7="f"/>
        <item field0="Debug" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="229" field7="f"/>
        <item field0="Cacher la palette" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="230" field7="f"/>
        <item field0="Base" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="231" field7="f"/>
        <item field0="Vue" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="232" field7="f"/>
        <item field0="D&#233;co" field1="" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="233" field7="f"/>
        <item field0="Logo : coussin" field1="1.1.8" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="234" field7="f"/>
        <item field0="Ic&#244;ne de l&apos;application" field1="1.2.1" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="235" field7="f"/>
        <item field0="Ic&#244;ne des fichiers" field1="1.2.1" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="236" field7="f"/>
        <item field0="Vues" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="237" field7="f"/>
        <item field0="Barre de statut commun" field1="1.2.2" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="238" field7="f"/>
        <item field0="Editeur des propri&#233;t&#233;s commun" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="239" field7="f"/>
        <item field0="Base" field1="1.2.2" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="240" field7="f"/>
        <item field0="Modification de la taille" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="241" field7="f"/>
        <item field0="En fonction des widgets" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="242" field7="f"/>
        <item field0="Configuration utilisateur figee" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="243" field7="f"/>
        <item field0="Configuration utilisateur en fonction de la vue" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="244" field7="f"/>
        <item field0="Lier touches et boutons de l&apos;&#233;diteur des proprit&#233;tes" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="245" field7="f"/>
        <item field0="Messages" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="246" field7="f"/>
        <item field0="Base" field1="1.2.2" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="247" field7="f"/>
        <item field0="Mettre de la couleur dans la console" field1="1.2.4" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="248" field7="f"/>
        <item field0="Recherche des erreurs" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="249" field7="f"/>
        <item field0="Scroll pour l&apos;arbre" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="250" field7="f"/>
        <item field0="G&#233;n&#233;rer un XML log" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="251" field7="f"/>
        <item field0="syslog ?" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="252" field7="f"/>
        <item field0="Commandes" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="253" field7="f"/>
        <item field0="Utilisation du Dnd Gtk" field1="1.2.2" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="254" field7="f"/>
        <item field0="Dnd expand auto" field1="1.2.2" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="255" field7="f"/>
        <item field0="Correcteur orthographique" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="256" field7="f"/>
        <item field0="ispell" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="257" field7="f"/>
        <item field0="aspell" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="258" field7="f"/>
        <item field0="Correcteur dans le gtk_text" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="259" field7="f"/>
        <item field0="Traduction" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="260" field7="f"/>
        <item field0="gdict ?" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="261" field7="f"/>
        <item field0="distante (sur le web)" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="262" field7="f"/>
        <item field0="Personnalisation" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="263" field7="f"/>
        <item field0="Mettre des d&#233;sactivations (aux choix) pour les commandes d&apos;administration" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="264" field7="f"/>
        <item field0="Mettre des confirmations (aux choix) pour les commandes critiques" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="265" field7="f"/>
        <item field0="M&#233;moriser et restituer les menus &#233;pingles" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="266" field7="f"/>
        <item field0="M&#233;moriser et restituer les raccourcis menu" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="267" field7="f"/>
        <item field0="Fonctionnalites" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="268" field7="f"/>
        <item field0="Saisie en direct" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="269" field7="f"/>
        <item field0="Annuler - Retour" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="270" field7="f"/>
        <item field0="Rechercher-Remplacer" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="271" field7="f"/>
        <item field0="Utiliser la tache espace pour les arbre et les listes" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="272" field7="f"/>
        <item field0="Zoom d&apos;arbre" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="273" field7="f"/>
        <item field0="Personnalisation" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="274" field7="f"/>
        <item field0="Personnalisation des greffons" field1="1.2.4" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="275" field7="f"/>
        <item field0="Option sur l&apos;utilisation du dnd de gtkclist" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="276" field7="f"/>
        <item field0="D&#233;sactivation de l&apos;auto-scroll" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="277" field7="f"/>
        <item field0="Lancer les greffons &quot;logistique&quot; en ligne de commande" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="278" field7="f"/>
        <item field0="Documentation" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="279" field7="f"/>
        <item field0="A propos" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="280" field7="f"/>
        <item field0="Base" field1="1.2.1" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="281" field7="f"/>
        <item field0="G&#233;n&#233;rer le docbook &#224; partir du XML" field1="?" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="282" field7="f"/>
        <item field0="Presto" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="283" field7="f"/>
        <item field0="Base" field1="1.2.1" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="284" field7="f"/>
        <item field0="Presto contextualis&#233; (par greffon)" field1="1.2.5" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="285" field7="f"/>
        <item field0="Nouvelles" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="286" field7="f"/>
        <item field0="Nouvelle charg&#233; sur le net" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="287" field7="f"/>
        <item field0="Mise &#224; jour de ToutDoux sur le net" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="288" field7="f"/>
        <item field0="Pop fen&#234;tre (d&#233;sactivable)" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="289" field7="f"/>
        <item field0="Index" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="290" field7="f"/>
        <item field0="Moteur de recherche" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="291" field7="f"/>
        <item field0="Touches" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="292" field7="f"/>
        <item field0="ToutDoux" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="293" field7="f"/>
        <item field0="Aide charg&#233; sur le net" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="294" field7="f"/>
        <item field0="G&#233;n&#233;rer le docbook &#224; partir du XML" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="295" field7="f"/>
        <item field0="Utiliser un arbre simple (comme nessus)" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="296" field7="f"/>
        <item field0="Pr&#233;f&#233;rences" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="297" field7="f"/>
        <item field0="Base" field1="1.2.1" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="298" field7="f"/>
        <item field0="Edition &#224; la volee" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="299" field7="f"/>
        <item field0="Explorateur de greffons" field1="1.2.1" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="300" field7="f"/>
        <item field0="Base" field1="1.2.1" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="301" field7="f"/>
        <item field0="Manuel" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="302" field7="f"/>
        <item field0="Manuel utilisateur" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="303" field7="f"/>
        <item field0="Concepts" field1="1.2.1" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="304" field7="f"/>
        <item field0="Manuel programmeur" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="305" field7="f"/>
        <item field0="Biblioth&#232;que et conventions" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="306" field7="f"/>
        <item field0="Compl&#233;ter la documentation" field1="" field2="en cours" field3="moyenne" field4="moyenne" field5="" field6="307" field7="f"/>
        <item field0="Diffusion" field1="" field2="en cours" field3="moyenne" field4="moyenne" field5="" field6="308" field7="f"/>
        <item field0="Internationalisation" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="309" field7="f"/>
        <item field0="Fran&#231;ais" field1="1.0.0" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="310" field7="f"/>
        <item field0="Anglais" field1="1.1.4" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="311" field7="f"/>
        <item field0="Allemand" field1="1.2.1" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="312" field7="f"/>
        <item field0="Option sur les langues dans le &quot;./configure&quot; pour la g&#233;n&#233;ration de la documentation" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="313" field7="f"/>
        <item field0="Option &quot;sa langue&quot; par d&#233;faut" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="314" field7="f"/>
        <item field0="Option pour ne pas mettre &quot;sa langue&quot;" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="315" field7="f"/>
        <item field0="Option pour toutes les langues" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="316" field7="f"/>
        <item field0="Sp&#233;cifier chaques langues" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="317" field7="f"/>
        <item field0="Site Web" field1="1.1.3" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="318" field7="f"/>
        <item field0="Pages pour le site gnu.org" field1="1.2.5" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="319" field7="f"/>
        <item field0="CVS : sourceforge" field1="1.2.1" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="320" field7="f"/>
        <item field0="Installer le support PostgreSQL automatiquement" field1="1.2.2" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="321" field7="f"/>
        <item field0="Supprimer le support PostgreSQL (admin par hOpla)" field1="1.2.4" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="322" field7="f"/>
        <item field0="Commentaires du code : soft de traduction &#224; la gettext" field1="" field2="en cours" field3="moyenne" field4="moyenne" field5="" field6="323" field7="f"/>
        <item field0="Images : soft de g&#233;n&#233;ration des &apos;button_*.xpm&apos; et des &apos;list_*.xpm&apos;" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="324" field7="f"/>
        <item field0="Compilation : soft de configuration de la compilation (langue et modules)" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="325" field7="f"/>
        <item field0="Regression" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="326" field7="f"/>
        <item field0="Enregistrer branche sous : &#224; faire" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="327" field7="f"/>
        <item field0="Ins&#233;rer fichier : g&#233;nant : &#224; faire" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="328" field7="f"/>
        <item field0="Personnalisation au d&#233;marage" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="329" field7="f"/>
        <item field0="Bugs" field1="" field2="en cours" field3="moyenne" field4="moyenne" field5="" field6="330" field7="f"/>
        <item field0="En cours" field1="" field2="en cours" field3="moyenne" field4="moyenne" field5="" field6="331" field7="f"/>
        <item field0="Le dnd gen&#232;re des messages d&apos;erreurs : pas compris" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="332" field7="f"/>
        <item field0="Fermeture de ToutDoux par le Wm pas propre : g&#233;nant" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="333" field7="f"/>
        <item field0="Effacement des lignes (gdk) du dnd pas vraiment propre" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="334" field7="f"/>
        <item field0="Menu des import-export chang&#233; &#224; froid" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="335" field7="f"/>
        <item field0="Bug dans les menus ayant un dossier comme 1&#176; node : faible" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="336" field7="f"/>
        <item field0="v1.2.5" field1="" field2="en cours" field3="moyenne" field4="moyenne" field5="" field6="337" field7="f"/>
        <item field0="Inversion dans la d&#233;finition des signets" field1="1.2.5" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="338" field7="f"/>
        <item field0="Le dnd qui ne change rien supprime la node : critique" field1="1.2.5" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="339" field7="f"/>
        <item field0="Le d&#233;plac&#233; ne g&#233;n&#232;re pas modification : critique" field1="1.2.5" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="340" field7="f"/>
        <item field0="Menu contextuel de l&apos;&#233;diteur des signets pas contextualise" field1="1.2.5" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="341" field7="f"/>
        <item field0="Plantage sur copie du parent vers un de ses enfants" field1="1.2.5" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="342" field7="f"/>
        <item field0="Le dnd peut ouvrir autre choze que le parent" field1="1.2.5" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="343" field7="f"/>
        <item field0="v1.2.4" field1="" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="344" field7="f"/>
        <item field0="Grosse g&#233;n&#233;ration de gdk-warning" field1="1.2.4" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="345" field7="f"/>
        <item field0="Editeur des propri&#233;t&#233;s pas capable de passer d&apos;une vue &#224; l&apos;autre : p&#233;nible" field1="1.2.4" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="346" field7="f"/>
        <item field0="Greffon incorrect dans le r&#233;pertoire des greffons : plantage m&#233;chant" field1="1.2.4" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="347" field7="f"/>
        <item field0="Fichier non-modifi&#233; alors que des nodes ont boug&#233;es : g&#233;nant" field1="1.2.4" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="348" field7="f"/>
        <item field0="Le enregistrer-sous provoque 2 fois la selection de fichier : g&#233;nant" field1="1.2.4" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="349" field7="f"/>
        <item field0="Arbre de la personamisation instable : g&#233;nant" field1="1.2.4" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="350" field7="f"/>
        <item field0="Un greffon (personnaliser) visible par cat&#233;gorie : g&#233;nant" field1="1.2.4" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="351" field7="f"/>
        <item field0="Apostrophe incompatible avec le SQL : horrible" field1="1.2.4" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="352" field7="f"/>
        <item field0="v1.2.3" field1="" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="353" field7="f"/>
        <item field0="Quitter + sauvegarde = plante : infernale" field1="1.2.3" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="354" field7="f"/>
        <item field0="Changement d&apos;ic&#244;nes dans l&apos;arbre : infernale" field1="1.2.3" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="355" field7="f"/>
        <item field0="Plus d&apos;images sur la palette : g&#233;nant" field1="1.2.3" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="356" field7="f"/>
        <item field0="v1.2.2" field1="" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="357" field7="f"/>
        <item field0="Taille fixe de la fen&#234;tre d&#233;tails de greffons : g&#233;nant" field1="1.2.2" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="358" field7="f"/>
        <item field0="Taille fixe de la fen&#234;tre d&#233;tails des propri&#233;t&#233;s : g&#233;nant" field1="1.2.2" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="359" field7="f"/>
        <item field0="Un greffon (navigateur de greffon) visible par cat&#233;gorie : g&#233;nant" field1="1.2.2" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="360" field7="f"/>
        <item field0="Arbre r&#233;cusif sur le nom : plantage m&#233;chant -&gt; dnd de gtk +" field1="1.2.2" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="361" field7="f"/>
        <item field0="popmenu non demand&#233; : horrible -&gt; dnd de gtk +" field1="1.2.2" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="362" field7="f"/>
        <item field0="Ctree modifi&#233; d&#232;s que propri&#233;t&#233; ouvert : g&#233;nant" field1="1.2.2" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="363" field7="f"/>
        <item field0="Ouvrir branche -&gt; d&#233;placer arbre pour la voir au maxi" field1="1.2.2" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="364" field7="f"/>
        <item field0="Non m&#233;morisation des tailles de fen&#234;tre sur fermeture par le wm : g&#233;nant" field1="1.2.2" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="365" field7="f"/>
        <item field0="Raccourcis clavier absents sur la fen^etre propri&#233;t&#233;s : g&#233;nant" field1="1.2.2" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="366" field7="f"/>
        <item field0="v1.2.1" field1="" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="367" field7="f"/>
        <item field0="connection &#224; PostgreSQL : faux boolean : plantage m&#233;chant" field1="1.2.1" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="368" field7="f"/>
        <item field0="v1.2.0" field1="" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="369" field7="f"/>
        <item field0="Ouverture du fichier sur navigateur (sans -f) d&#233;faillante" field1="1.1.10" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="370" field7="f"/>
        <item field0="v1.1.9" field1="" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="371" field7="f"/>
        <item field0="D&#233;tection de l&apos;extension lors de la sauvegarde" field1="1.1.9" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="372" field7="f"/>
        <item field0="Fen&#234;tre propri&#233;t&#233;s : &#233;tiquette mobile -&gt; &#233;tiquette fixe" field1="1.1.9" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="373" field7="f"/>
        <item field0="Sauvegarde action : item seul : plantage critique" field1="1.1.9" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="374" field7="f"/>
        <item field0="Sauvegarde action : sauve d&apos;autres items : g&#233;nant" field1="1.1.9" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="375" field7="f"/>
        <item field0="Petites confusions entre cvs et csv" field1="1.1.9" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="376" field7="f"/>
        <item field0="v1.1.8" field1="" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="377" field7="f"/>
        <item field0="2 ou + caract&#232;res sp&#233;ciaux : oubli&#233; : Pb de la libxml -&gt; unicode" field1="1.1.8" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="378" field7="f"/>
        <item field0="Fichiers cr&#233;&#233; par la lib xml 1.8.x illisible (Pb des noms de domaine)" field1="1.1.8" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="379" field7="f"/>
        <item field0="R&#233;cents &gt; 10 -&gt; plantage" field1="1.1.8" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="380" field7="f"/>
        <item field0="Effet de bords sur init du tableau fichier r&#233;cents " field1="1.1.8" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="381" field7="f"/>
        <item field0="v1.1.7" field1="" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="382" field7="f"/>
        <item field0="&quot;A littl project manager&quot; non traduit" field1="1.1.7" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="383" field7="f"/>
        <item field0="S&#233;parateur = virgule -&gt; xml" field1="1.1.7" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="384" field7="f"/>
        <item field0="Dnd + scrool = popmenu : g&#233;nant" field1="1.1.7" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="385" field7="f"/>
        <item field0="v1.1.6" field1="" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="386" field7="f"/>
        <item field0="Limitation &#224; 100 lignes : critique" field1="1.1.6" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="387" field7="f"/>
        <item field0="v1.1.5" field1="" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="388" field7="f"/>
        <item field0="Lecture fichier version 1.1.3 : critique" field1="1.1.5" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="389" field7="f"/>
        <item field0="Fermeture du fichier mal effectu&#233;e : impropre" field1="1.1.5" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="390" field7="f"/>
        <item field0="v1.1.4" field1="" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="391" field7="f"/>
        <item field0="N&#233;cessite de deux clicks sur les menus : g&#233;nant" field1="1.1.4" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="392" field7="f"/>
        <item field0="Utilisation de Glade/Gnome" field1="1.1.4" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="393" field7="f"/>
        <item field0="v1.1.3" field1="" field2="soldee" field3="moyenne" field4="moyenne" field5="" field6="394" field7="f"/>
        <item field0="Bug externes (du moins je pense)" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="395" field7="f"/>
        <item field0="D&#233;placement impr&#233;vu de l&apos;arbre vers le bas : bug de la lib gtk : horrible" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="396" field7="f"/>
        <item field0="Sur le gtk_tree des commandes au clicks sont deja d&#233;finis : bug de la lib gtk : g&#233;nant" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="397" field7="f"/>
        <item field0="Autoscroll inhib&#233; par l&apos;activation de l&apos;ascenseur vertical : bug de la lib gtk : g&#233;nant" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="398" field7="f"/>
        <item field0="Code" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="399" field7="f"/>
        <item field0="M&#233;moire" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="400" field7="f"/>
        <item field0="A chaque changement de fichier : la m&#233;moire grimpe" field1="" field2="en cours" field3="moyenne" field4="moyenne" field5="" field6="401" field7="f"/>
        <item field0="A chaque sauvegarde de fichier : la m&#233;moire grimpe" field1="" field2="en cours" field3="moyenne" field4="moyenne" field5="" field6="402" field7="f"/>
        <item field0="g_strdup_printf par g_strconcat ?" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="403" field7="f"/>
        <item field0="GLib" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="404" field7="f"/>
        <item field0="Thread : tuer le processus de wget" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="405" field7="f"/>
        <item field0="GModule : chargement / d&#233;chargement des greffons" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="406" field7="f"/>
        <item field0="Hashtable" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="407" field7="f"/>
        <item field0="Mettre une option sur le dnd soit bas&#233; xdnd soit bas&#233; sur gtkcree" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="408" field7="f"/>
        <item field0="les champs d&apos;administration sont d&#233;pendant de leur position : g&#233;nant" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="409" field7="f"/>
        <item field0="les propri&#233;tes des greffons sont d&#233;pendant de leur position : g&#233;nant" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="410" field7="f"/>
        <item field0="Virer les menus GNOME pour du GTK+" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="411" field7="f"/>
        <item field0="Utiliser le + possible package_dir" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="412" field7="f"/>
        <item field0="En cours" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="413" field7="f"/>
        <item field0="D&#233;couper le greffon bookmarks" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="414" field7="f"/>
        <item field0="R&#233;duire le init du greffon bookmarks" field1="" field2="pr&#233;vue" field3="moyenne" field4="moyenne" field5="" field6="415" field7="f"/>
      </items>
    </datatable>
    <datatable table="item_tree">
      <items>
        <item field0="1" field1="0" field2="108"/>
        <item field0="2" field1="1" field2="17"/>
        <item field0="3" field1="2" field2="16"/>
        <item field0="4" field1="3" field2="8"/>
        <item field0="5" field1="4" field2="6"/>
        <item field0="6" field1="4" field2="7"/>
        <item field0="7" field1="4" field2="0"/>
        <item field0="8" field1="3" field2="9"/>
        <item field0="9" field1="3" field2="10"/>
        <item field0="10" field1="3" field2="11"/>
        <item field0="11" field1="3" field2="12"/>
        <item field0="12" field1="3" field2="13"/>
        <item field0="13" field1="3" field2="14"/>
        <item field0="14" field1="3" field2="15"/>
        <item field0="15" field1="3" field2="0"/>
        <item field0="16" field1="2" field2="0"/>
        <item field0="17" field1="1" field2="21"/>
        <item field0="18" field1="17" field2="19"/>
        <item field0="19" field1="17" field2="20"/>
        <item field0="20" field1="17" field2="0"/>
        <item field0="21" field1="1" field2="38"/>
        <item field0="22" field1="21" field2="23"/>
        <item field0="23" field1="21" field2="24"/>
        <item field0="24" field1="21" field2="25"/>
        <item field0="25" field1="21" field2="26"/>
        <item field0="26" field1="21" field2="27"/>
        <item field0="27" field1="21" field2="28"/>
        <item field0="28" field1="21" field2="29"/>
        <item field0="29" field1="21" field2="30"/>
        <item field0="30" field1="21" field2="31"/>
        <item field0="31" field1="21" field2="0"/>
        <item field0="32" field1="31" field2="35"/>
        <item field0="33" field1="32" field2="34"/>
        <item field0="34" field1="32" field2="0"/>
        <item field0="35" field1="31" field2="36"/>
        <item field0="36" field1="31" field2="37"/>
        <item field0="37" field1="31" field2="0"/>
        <item field0="38" field1="1" field2="0"/>
        <item field0="39" field1="38" field2="40"/>
        <item field0="40" field1="38" field2="41"/>
        <item field0="41" field1="38" field2="42"/>
        <item field0="42" field1="38" field2="0"/>
        <item field0="43" field1="0" field2="140"/>
        <item field0="44" field1="43" field2="73"/>
        <item field0="45" field1="44" field2="68"/>
        <item field0="46" field1="45" field2="52"/>
        <item field0="47" field1="46" field2="48"/>
        <item field0="48" field1="46" field2="49"/>
        <item field0="49" field1="46" field2="50"/>
        <item field0="50" field1="46" field2="51"/>
        <item field0="51" field1="46" field2="0"/>
        <item field0="52" field1="45" field2="56"/>
        <item field0="53" field1="52" field2="54"/>
        <item field0="54" field1="52" field2="55"/>
        <item field0="55" field1="52" field2="0"/>
        <item field0="56" field1="45" field2="59"/>
        <item field0="57" field1="56" field2="58"/>
        <item field0="58" field1="56" field2="0"/>
        <item field0="59" field1="45" field2="62"/>
        <item field0="60" field1="59" field2="61"/>
        <item field0="61" field1="59" field2="0"/>
        <item field0="62" field1="45" field2="64"/>
        <item field0="63" field1="62" field2="0"/>
        <item field0="64" field1="45" field2="0"/>
        <item field0="65" field1="64" field2="66"/>
        <item field0="66" field1="64" field2="67"/>
        <item field0="67" field1="64" field2="0"/>
        <item field0="68" field1="44" field2="69"/>
        <item field0="69" field1="44" field2="70"/>
        <item field0="70" field1="44" field2="71"/>
        <item field0="71" field1="44" field2="72"/>
        <item field0="72" field1="44" field2="0"/>
        <item field0="73" field1="43" field2="89"/>
        <item field0="74" field1="73" field2="76"/>
        <item field0="75" field1="74" field2="0"/>
        <item field0="76" field1="73" field2="84"/>
        <item field0="77" field1="76" field2="78"/>
        <item field0="78" field1="76" field2="79"/>
        <item field0="79" field1="76" field2="80"/>
        <item field0="80" field1="76" field2="81"/>
        <item field0="81" field1="76" field2="82"/>
        <item field0="82" field1="76" field2="83"/>
        <item field0="83" field1="76" field2="0"/>
        <item field0="84" field1="73" field2="86"/>
        <item field0="85" field1="84" field2="0"/>
        <item field0="86" field1="73" field2="87"/>
        <item field0="87" field1="73" field2="88"/>
        <item field0="88" field1="73" field2="0"/>
        <item field0="89" field1="43" field2="0"/>
        <item field0="90" field1="89" field2="95"/>
        <item field0="91" field1="90" field2="92"/>
        <item field0="92" field1="90" field2="93"/>
        <item field0="93" field1="90" field2="94"/>
        <item field0="94" field1="90" field2="0"/>
        <item field0="95" field1="89" field2="96"/>
        <item field0="96" field1="89" field2="99"/>
        <item field0="97" field1="96" field2="98"/>
        <item field0="98" field1="96" field2="0"/>
        <item field0="99" field1="89" field2="102"/>
        <item field0="100" field1="99" field2="101"/>
        <item field0="101" field1="99" field2="0"/>
        <item field0="102" field1="89" field2="104"/>
        <item field0="103" field1="102" field2="0"/>
        <item field0="104" field1="89" field2="0"/>
        <item field0="105" field1="104" field2="106"/>
        <item field0="106" field1="104" field2="107"/>
        <item field0="107" field1="104" field2="0"/>
        <item field0="108" field1="0" field2="43"/>
        <item field0="109" field1="108" field2="110"/>
        <item field0="110" field1="108" field2="115"/>
        <item field0="111" field1="110" field2="113"/>
        <item field0="112" field1="111" field2="0"/>
        <item field0="113" field1="110" field2="114"/>
        <item field0="114" field1="110" field2="0"/>
        <item field0="115" field1="108" field2="118"/>
        <item field0="116" field1="115" field2="117"/>
        <item field0="117" field1="115" field2="0"/>
        <item field0="118" field1="108" field2="121"/>
        <item field0="119" field1="118" field2="120"/>
        <item field0="120" field1="118" field2="0"/>
        <item field0="121" field1="108" field2="124"/>
        <item field0="122" field1="121" field2="123"/>
        <item field0="123" field1="121" field2="0"/>
        <item field0="124" field1="108" field2="125"/>
        <item field0="125" field1="108" field2="134"/>
        <item field0="126" field1="125" field2="131"/>
        <item field0="127" field1="126" field2="128"/>
        <item field0="128" field1="126" field2="129"/>
        <item field0="129" field1="126" field2="130"/>
        <item field0="130" field1="126" field2="0"/>
        <item field0="131" field1="125" field2="133"/>
        <item field0="132" field1="131" field2="0"/>
        <item field0="133" field1="125" field2="0"/>
        <item field0="134" field1="108" field2="136"/>
        <item field0="135" field1="134" field2="0"/>
        <item field0="136" field1="108" field2="0"/>
        <item field0="137" field1="136" field2="138"/>
        <item field0="138" field1="136" field2="139"/>
        <item field0="139" field1="136" field2="0"/>
        <item field0="140" field1="0" field2="165"/>
        <item field0="141" field1="140" field2="142"/>
        <item field0="142" field1="140" field2="147"/>
        <item field0="143" field1="142" field2="144"/>
        <item field0="144" field1="142" field2="145"/>
        <item field0="145" field1="142" field2="0"/>
        <item field0="146" field1="145" field2="0"/>
        <item field0="147" field1="140" field2="157"/>
        <item field0="148" field1="147" field2="150"/>
        <item field0="149" field1="148" field2="0"/>
        <item field0="150" field1="147" field2="153"/>
        <item field0="151" field1="150" field2="152"/>
        <item field0="152" field1="150" field2="0"/>
        <item field0="153" field1="147" field2="0"/>
        <item field0="154" field1="153" field2="155"/>
        <item field0="155" field1="153" field2="156"/>
        <item field0="156" field1="153" field2="0"/>
        <item field0="157" field1="140" field2="163"/>
        <item field0="158" field1="157" field2="159"/>
        <item field0="159" field1="157" field2="160"/>
        <item field0="160" field1="157" field2="161"/>
        <item field0="161" field1="157" field2="162"/>
        <item field0="162" field1="157" field2="0"/>
        <item field0="163" field1="140" field2="164"/>
        <item field0="164" field1="140" field2="0"/>
        <item field0="165" field1="0" field2="207"/>
        <item field0="166" field1="165" field2="170"/>
        <item field0="167" field1="166" field2="168"/>
        <item field0="168" field1="166" field2="169"/>
        <item field0="169" field1="166" field2="0"/>
        <item field0="170" field1="165" field2="189"/>
        <item field0="171" field1="170" field2="172"/>
        <item field0="172" field1="170" field2="173"/>
        <item field0="173" field1="170" field2="176"/>
        <item field0="174" field1="173" field2="175"/>
        <item field0="175" field1="173" field2="0"/>
        <item field0="176" field1="170" field2="179"/>
        <item field0="177" field1="176" field2="178"/>
        <item field0="178" field1="176" field2="0"/>
        <item field0="179" field1="170" field2="183"/>
        <item field0="180" field1="179" field2="181"/>
        <item field0="181" field1="179" field2="182"/>
        <item field0="182" field1="179" field2="0"/>
        <item field0="183" field1="170" field2="184"/>
        <item field0="184" field1="170" field2="185"/>
        <item field0="185" field1="170" field2="186"/>
        <item field0="186" field1="170" field2="187"/>
        <item field0="187" field1="170" field2="0"/>
        <item field0="188" field1="187" field2="0"/>
        <item field0="189" field1="165" field2="192"/>
        <item field0="190" field1="189" field2="191"/>
        <item field0="191" field1="189" field2="0"/>
        <item field0="192" field1="165" field2="193"/>
        <item field0="193" field1="165" field2="194"/>
        <item field0="194" field1="165" field2="199"/>
        <item field0="195" field1="194" field2="196"/>
        <item field0="196" field1="194" field2="197"/>
        <item field0="197" field1="194" field2="198"/>
        <item field0="198" field1="194" field2="0"/>
        <item field0="199" field1="165" field2="200"/>
        <item field0="200" field1="165" field2="206"/>
        <item field0="201" field1="200" field2="202"/>
        <item field0="202" field1="200" field2="203"/>
        <item field0="203" field1="200" field2="204"/>
        <item field0="204" field1="200" field2="205"/>
        <item field0="205" field1="200" field2="0"/>
        <item field0="206" field1="165" field2="0"/>
        <item field0="207" field1="0" field2="223"/>
        <item field0="208" field1="207" field2="214"/>
        <item field0="209" field1="208" field2="210"/>
        <item field0="210" field1="208" field2="211"/>
        <item field0="211" field1="208" field2="212"/>
        <item field0="212" field1="208" field2="213"/>
        <item field0="213" field1="208" field2="0"/>
        <item field0="214" field1="207" field2="215"/>
        <item field0="215" field1="207" field2="216"/>
        <item field0="216" field1="207" field2="220"/>
        <item field0="217" field1="216" field2="218"/>
        <item field0="218" field1="216" field2="219"/>
        <item field0="219" field1="216" field2="0"/>
        <item field0="220" field1="207" field2="0"/>
        <item field0="221" field1="220" field2="222"/>
        <item field0="222" field1="220" field2="0"/>
        <item field0="223" field1="0" field2="279"/>
        <item field0="224" field1="223" field2="233"/>
        <item field0="225" field1="224" field2="226"/>
        <item field0="226" field1="224" field2="231"/>
        <item field0="227" field1="226" field2="228"/>
        <item field0="228" field1="226" field2="229"/>
        <item field0="229" field1="226" field2="230"/>
        <item field0="230" field1="226" field2="0"/>
        <item field0="231" field1="224" field2="232"/>
        <item field0="232" field1="224" field2="0"/>
        <item field0="233" field1="223" field2="237"/>
        <item field0="234" field1="233" field2="235"/>
        <item field0="235" field1="233" field2="236"/>
        <item field0="236" field1="233" field2="0"/>
        <item field0="237" field1="223" field2="253"/>
        <item field0="238" field1="237" field2="239"/>
        <item field0="239" field1="237" field2="246"/>
        <item field0="240" field1="239" field2="241"/>
        <item field0="241" field1="239" field2="245"/>
        <item field0="242" field1="241" field2="243"/>
        <item field0="243" field1="241" field2="244"/>
        <item field0="244" field1="241" field2="0"/>
        <item field0="245" field1="239" field2="0"/>
        <item field0="246" field1="237" field2="0"/>
        <item field0="247" field1="246" field2="248"/>
        <item field0="248" field1="246" field2="249"/>
        <item field0="249" field1="246" field2="250"/>
        <item field0="250" field1="246" field2="251"/>
        <item field0="251" field1="246" field2="252"/>
        <item field0="252" field1="246" field2="0"/>
        <item field0="253" field1="223" field2="274"/>
        <item field0="254" field1="253" field2="255"/>
        <item field0="255" field1="253" field2="256"/>
        <item field0="256" field1="253" field2="260"/>
        <item field0="257" field1="256" field2="258"/>
        <item field0="258" field1="256" field2="259"/>
        <item field0="259" field1="256" field2="0"/>
        <item field0="260" field1="253" field2="263"/>
        <item field0="261" field1="260" field2="262"/>
        <item field0="262" field1="260" field2="0"/>
        <item field0="263" field1="253" field2="268"/>
        <item field0="264" field1="263" field2="265"/>
        <item field0="265" field1="263" field2="266"/>
        <item field0="266" field1="263" field2="267"/>
        <item field0="267" field1="263" field2="0"/>
        <item field0="268" field1="253" field2="272"/>
        <item field0="269" field1="268" field2="270"/>
        <item field0="270" field1="268" field2="271"/>
        <item field0="271" field1="268" field2="0"/>
        <item field0="272" field1="253" field2="273"/>
        <item field0="273" field1="253" field2="0"/>
        <item field0="274" field1="223" field2="0"/>
        <item field0="275" field1="274" field2="276"/>
        <item field0="276" field1="274" field2="277"/>
        <item field0="277" field1="274" field2="278"/>
        <item field0="278" field1="274" field2="0"/>
        <item field0="279" field1="0" field2="308"/>
        <item field0="280" field1="279" field2="283"/>
        <item field0="281" field1="280" field2="282"/>
        <item field0="282" field1="280" field2="0"/>
        <item field0="283" field1="279" field2="297"/>
        <item field0="284" field1="283" field2="285"/>
        <item field0="285" field1="283" field2="286"/>
        <item field0="286" field1="283" field2="290"/>
        <item field0="287" field1="286" field2="288"/>
        <item field0="288" field1="286" field2="289"/>
        <item field0="289" field1="286" field2="0"/>
        <item field0="290" field1="283" field2="292"/>
        <item field0="291" field1="290" field2="0"/>
        <item field0="292" field1="283" field2="293"/>
        <item field0="293" field1="283" field2="294"/>
        <item field0="294" field1="283" field2="295"/>
        <item field0="295" field1="283" field2="296"/>
        <item field0="296" field1="283" field2="0"/>
        <item field0="297" field1="279" field2="300"/>
        <item field0="298" field1="297" field2="299"/>
        <item field0="299" field1="297" field2="0"/>
        <item field0="300" field1="279" field2="302"/>
        <item field0="301" field1="300" field2="0"/>
        <item field0="302" field1="279" field2="307"/>
        <item field0="303" field1="302" field2="305"/>
        <item field0="304" field1="303" field2="0"/>
        <item field0="305" field1="302" field2="0"/>
        <item field0="306" field1="305" field2="0"/>
        <item field0="307" field1="279" field2="0"/>
        <item field0="308" field1="0" field2="326"/>
        <item field0="309" field1="308" field2="318"/>
        <item field0="310" field1="309" field2="311"/>
        <item field0="311" field1="309" field2="312"/>
        <item field0="312" field1="309" field2="313"/>
        <item field0="313" field1="309" field2="0"/>
        <item field0="314" field1="313" field2="315"/>
        <item field0="315" field1="313" field2="316"/>
        <item field0="316" field1="313" field2="317"/>
        <item field0="317" field1="313" field2="0"/>
        <item field0="318" field1="308" field2="319"/>
        <item field0="319" field1="308" field2="320"/>
        <item field0="320" field1="308" field2="321"/>
        <item field0="321" field1="308" field2="322"/>
        <item field0="322" field1="308" field2="323"/>
        <item field0="323" field1="308" field2="324"/>
        <item field0="324" field1="308" field2="325"/>
        <item field0="325" field1="308" field2="0"/>
        <item field0="326" field1="0" field2="330"/>
        <item field0="327" field1="326" field2="328"/>
        <item field0="328" field1="326" field2="329"/>
        <item field0="329" field1="326" field2="0"/>
        <item field0="330" field1="0" field2="395"/>
        <item field0="331" field1="330" field2="337"/>
        <item field0="332" field1="331" field2="333"/>
        <item field0="333" field1="331" field2="334"/>
        <item field0="334" field1="331" field2="335"/>
        <item field0="335" field1="331" field2="336"/>
        <item field0="336" field1="331" field2="0"/>
        <item field0="337" field1="330" field2="344"/>
        <item field0="338" field1="337" field2="339"/>
        <item field0="339" field1="337" field2="340"/>
        <item field0="340" field1="337" field2="341"/>
        <item field0="341" field1="337" field2="342"/>
        <item field0="342" field1="337" field2="343"/>
        <item field0="343" field1="337" field2="0"/>
        <item field0="344" field1="330" field2="353"/>
        <item field0="345" field1="344" field2="346"/>
        <item field0="346" field1="344" field2="347"/>
        <item field0="347" field1="344" field2="348"/>
        <item field0="348" field1="344" field2="349"/>
        <item field0="349" field1="344" field2="350"/>
        <item field0="350" field1="344" field2="351"/>
        <item field0="351" field1="344" field2="352"/>
        <item field0="352" field1="344" field2="0"/>
        <item field0="353" field1="330" field2="357"/>
        <item field0="354" field1="353" field2="355"/>
        <item field0="355" field1="353" field2="356"/>
        <item field0="356" field1="353" field2="0"/>
        <item field0="357" field1="330" field2="367"/>
        <item field0="358" field1="357" field2="359"/>
        <item field0="359" field1="357" field2="360"/>
        <item field0="360" field1="357" field2="361"/>
        <item field0="361" field1="357" field2="362"/>
        <item field0="362" field1="357" field2="363"/>
        <item field0="363" field1="357" field2="364"/>
        <item field0="364" field1="357" field2="365"/>
        <item field0="365" field1="357" field2="366"/>
        <item field0="366" field1="357" field2="0"/>
        <item field0="367" field1="330" field2="369"/>
        <item field0="368" field1="367" field2="0"/>
        <item field0="369" field1="330" field2="371"/>
        <item field0="370" field1="369" field2="0"/>
        <item field0="371" field1="330" field2="377"/>
        <item field0="372" field1="371" field2="373"/>
        <item field0="373" field1="371" field2="374"/>
        <item field0="374" field1="371" field2="375"/>
        <item field0="375" field1="371" field2="376"/>
        <item field0="376" field1="371" field2="0"/>
        <item field0="377" field1="330" field2="382"/>
        <item field0="378" field1="377" field2="379"/>
        <item field0="379" field1="377" field2="380"/>
        <item field0="380" field1="377" field2="381"/>
        <item field0="381" field1="377" field2="0"/>
        <item field0="382" field1="330" field2="386"/>
        <item field0="383" field1="382" field2="384"/>
        <item field0="384" field1="382" field2="385"/>
        <item field0="385" field1="382" field2="0"/>
        <item field0="386" field1="330" field2="388"/>
        <item field0="387" field1="386" field2="0"/>
        <item field0="388" field1="330" field2="391"/>
        <item field0="389" field1="388" field2="390"/>
        <item field0="390" field1="388" field2="0"/>
        <item field0="391" field1="330" field2="394"/>
        <item field0="392" field1="391" field2="393"/>
        <item field0="393" field1="391" field2="0"/>
        <item field0="394" field1="330" field2="0"/>
        <item field0="395" field1="0" field2="399"/>
        <item field0="396" field1="395" field2="397"/>
        <item field0="397" field1="395" field2="398"/>
        <item field0="398" field1="395" field2="0"/>
        <item field0="399" field1="0" field2="413"/>
        <item field0="400" field1="399" field2="404"/>
        <item field0="401" field1="400" field2="402"/>
        <item field0="402" field1="400" field2="403"/>
        <item field0="403" field1="400" field2="0"/>
        <item field0="404" field1="399" field2="408"/>
        <item field0="405" field1="404" field2="406"/>
        <item field0="406" field1="404" field2="407"/>
        <item field0="407" field1="404" field2="0"/>
        <item field0="408" field1="399" field2="409"/>
        <item field0="409" field1="399" field2="410"/>
        <item field0="410" field1="399" field2="411"/>
        <item field0="411" field1="399" field2="412"/>
        <item field0="412" field1="399" field2="0"/>
        <item field0="413" field1="0" field2="0"/>
        <item field0="414" field1="413" field2="415"/>
        <item field0="415" field1="413" field2="0"/>
      </items>
    </datatable>
  </datatables>
</database>
