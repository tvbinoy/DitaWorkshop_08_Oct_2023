<?xml version="1.0" encoding="UTF-8"?>

<!-- Created by   -->
<!-- Writing Style Rules  -->
<!-- 2023-10-07, v0.1 -->
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:sqf="http://www.schematron-quickfix.com/validator/process" queryBinding="xslt2" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<title>My Rules</title>
<pattern>
<rule id="TWT001" context="text()">
<report test="contains(., 'TWT')" role="error" sqf:fix="fixTWT001">You cannot use TWT in documentation.</report>
<sqf:fix id="fixTWT001">
<sqf:description>
<sqf:title>Replace TWT</sqf:title>
</sqf:description>
<sqf:stringReplace match="." regex="TWT" select="'TechWriters Tribe'"/>
</sqf:fix>
</rule>
</pattern>
</schema>