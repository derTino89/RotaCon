<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.4.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="luani_docuSymbol">
<description>&lt;b&gt;LUANI Doku-Symbole&lt;/b&gt;&lt;p&gt;
Schaltplansymbole zur Dokumentation&lt;br&gt;
ohne Bauteilgehäuse/nicht layout-fähig&lt;p&gt;
&lt;i&gt;CC-BY-SA 3.0&lt;br&gt;luani.de &lt;/i&gt;V0.1</description>
<packages>
</packages>
<symbols>
<symbol name="AKKU">
<wire x1="-0.635" y1="-1.905" x2="0" y2="-1.905" width="0.4064" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="0" y1="-1.905" x2="0.635" y2="-1.905" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="-0.635" x2="0" y2="-0.635" width="0.4064" layer="94"/>
<wire x1="0" y1="-0.635" x2="2.54" y2="-0.635" width="0.4064" layer="94"/>
<wire x1="0" y1="-0.635" x2="0" y2="0" width="0.1524" layer="94"/>
<text x="-0.635" y="0" size="1.524" layer="94" rot="R90">+</text>
<text x="-0.635" y="-3.175" size="1.524" layer="94" rot="R90">-</text>
<text x="3.175" y="0.254" size="1.778" layer="95">&gt;NAME</text>
<text x="3.175" y="-2.032" size="1.778" layer="96">&gt;VALUE</text>
<pin name="+" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="-" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
<symbol name="KLEMME">
<wire x1="1.778" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<circle x="0.889" y="0" radius="0.889" width="0.254" layer="94"/>
<text x="-1.27" y="0" size="1.778" layer="95" align="center-right">&gt;NAME</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="LAMPE">
<circle x="0" y="0" radius="1.5875" width="0.254" layer="94"/>
<pin name="P$1" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<pin name="P$2" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<text x="3.175" y="0.254" size="1.778" layer="95">&gt;NAME</text>
<text x="3.175" y="-2.032" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="-1.0795" y1="1.0795" x2="1.0795" y2="-1.0795" width="0.1905" layer="94"/>
<wire x1="-1.0795" y1="-1.0795" x2="1.0795" y2="1.0795" width="0.1905" layer="94"/>
<wire x1="0" y1="1.5875" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-1.5875" x2="0" y2="-2.54" width="0.254" layer="94"/>
</symbol>
<symbol name="METER">
<text x="0" y="0" size="2.54" layer="97" align="center">&gt;TYP</text>
<circle x="0" y="0" radius="2.54" width="0.254" layer="94"/>
<pin name="P$1" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<pin name="P$2" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<text x="3.175" y="0" size="1.778" layer="95" align="center-left">&gt;NAME</text>
</symbol>
<symbol name="PFEIL">
<text x="0.635" y="0" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<wire x1="0" y1="2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<polygon width="0.254" layer="94">
<vertex x="0" y="-3.048"/>
<vertex x="-0.508" y="-1.524"/>
<vertex x="0.508" y="-1.524"/>
</polygon>
</symbol>
<symbol name="POTI">
<wire x1="0" y1="-1.778" x2="2.667" y2="3.81" width="0.1524" layer="94"/>
<wire x1="0" y1="-1.778" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<polygon width="0.1524" layer="94">
<vertex x="2.54" y="2.54"/>
<vertex x="2.667" y="3.81"/>
<vertex x="1.778" y="2.921"/>
</polygon>
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<text x="-5.08" y="4.064" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="1.778" size="1.778" layer="96">&gt;VALUE</text>
<pin name="B" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="A" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="S" x="0" y="-2.54" visible="off" length="point" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
<symbol name="SCHALTER-1S">
<wire x1="1.905" y1="5.08" x2="1.905" y2="4.191" width="0.254" layer="94"/>
<wire x1="1.905" y1="5.08" x2="0" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="4.445" width="0.1524" layer="94"/>
<wire x1="0" y1="5.08" x2="-1.905" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="3.81" x2="0" y2="3.302" width="0.1524" layer="94"/>
<wire x1="0" y1="2.286" x2="0" y2="1.905" width="0.1524" layer="94"/>
<wire x1="0" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="94"/>
<wire x1="-3.175" y1="0" x2="-1.905" y2="0" width="0.254" layer="94"/>
<wire x1="-1.905" y1="0" x2="1.905" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.905" y1="0" x2="3.175" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="3.302" x2="-0.762" y2="2.794" width="0.1524" layer="94"/>
<wire x1="-0.762" y1="2.794" x2="0" y2="2.286" width="0.1524" layer="94"/>
<text x="3.175" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<pin name="P" x="-5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="S" x="5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1" rot="R180"/>
<wire x1="-1.905" y1="4.191" x2="-1.905" y2="5.08" width="0.254" layer="94"/>
</symbol>
<symbol name="QUELLE-U">
<circle x="0" y="0" radius="2.54" width="0.254" layer="94"/>
<pin name="P$1" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<pin name="P$2" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<text x="3.175" y="0.254" size="1.778" layer="95">&gt;NAME</text>
<text x="3.175" y="-2.032" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="0" y1="-2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
</symbol>
<symbol name="QUELLE-I">
<circle x="0" y="0" radius="2.54" width="0.254" layer="94"/>
<pin name="P$1" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<pin name="P$2" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<text x="3.175" y="0.254" size="1.778" layer="95">&gt;NAME</text>
<text x="3.175" y="-2.032" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
</symbol>
<symbol name="TASTER-1S">
<wire x1="1.905" y1="5.08" x2="1.905" y2="4.191" width="0.254" layer="94"/>
<wire x1="1.905" y1="5.08" x2="0" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="4.445" width="0.1524" layer="94"/>
<wire x1="0" y1="5.08" x2="-1.905" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="1.905" width="0.1524" layer="94"/>
<wire x1="0" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="94"/>
<wire x1="-3.175" y1="0" x2="-1.905" y2="0" width="0.254" layer="94"/>
<wire x1="-1.905" y1="0" x2="1.905" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.905" y1="0" x2="3.175" y2="0" width="0.254" layer="94"/>
<text x="3.175" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<pin name="P" x="-5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="S" x="5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1" rot="R180"/>
<wire x1="-1.905" y1="4.191" x2="-1.905" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="3.81" x2="0" y2="3.175" width="0.1524" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="AKKU" prefix="B" uservalue="yes">
<description>Akku (1 Zelle)</description>
<gates>
<gate name="G$1" symbol="AKKU" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="0"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="KLEMME" prefix="X">
<description>Klemme</description>
<gates>
<gate name="G$1" symbol="KLEMME" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="0"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LAMPE" prefix="P" uservalue="yes">
<description>Lampe</description>
<gates>
<gate name="G$1" symbol="LAMPE" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="0"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MESSGERAET" prefix="M">
<description>Messgerät
Bezeichnung: Attribut "Typ"</description>
<gates>
<gate name="G$1" symbol="METER" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="TYP" value="?" constant="no"/>
<attribute name="_EXTERNAL_" value="0"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MESSPFEIL" prefix="M">
<gates>
<gate name="G$1" symbol="PFEIL" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="0"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="POTENTIOMETER" prefix="R" uservalue="yes">
<description>Potentiometer</description>
<gates>
<gate name="G$1" symbol="POTI" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="0"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SCHALTER" prefix="S">
<description>Schalter, 1 Schließer</description>
<gates>
<gate name="G$1" symbol="SCHALTER-1S" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="0"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SPANNUNGSQUELLE" prefix="U" uservalue="yes">
<description>Ideale Spannungsquelle</description>
<gates>
<gate name="G$1" symbol="QUELLE-U" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="0"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="STROMQUELLE" prefix="I" uservalue="yes">
<description>Ideale Stromquelle</description>
<gates>
<gate name="G$1" symbol="QUELLE-I" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="0"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TASTER" prefix="S">
<description>Taster, 1 Schließer</description>
<gates>
<gate name="G$1" symbol="TASTER-1S" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="0"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="B1" library="luani_docuSymbol" deviceset="AKKU" device="" value="1,2V"/>
<part name="X1" library="luani_docuSymbol" deviceset="KLEMME" device=""/>
<part name="X2" library="luani_docuSymbol" deviceset="KLEMME" device=""/>
<part name="P1" library="luani_docuSymbol" deviceset="LAMPE" device="" value="60W"/>
<part name="U2" library="luani_docuSymbol" deviceset="MESSGERAET" device="">
<attribute name="TYP" value="U"/>
</part>
<part name="I2" library="luani_docuSymbol" deviceset="MESSPFEIL" device=""/>
<part name="R1" library="luani_docuSymbol" deviceset="POTENTIOMETER" device="" value="47R"/>
<part name="S1" library="luani_docuSymbol" deviceset="SCHALTER" device=""/>
<part name="U1" library="luani_docuSymbol" deviceset="SPANNUNGSQUELLE" device="" value="1kV"/>
<part name="I1" library="luani_docuSymbol" deviceset="STROMQUELLE" device="" value="10A"/>
<part name="S2" library="luani_docuSymbol" deviceset="TASTER" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="B1" gate="G$1" x="22.86" y="7.62"/>
<instance part="X1" gate="G$1" x="0" y="30.48"/>
<instance part="X2" gate="G$1" x="0" y="0"/>
<instance part="P1" gate="G$1" x="50.8" y="10.16"/>
<instance part="U2" gate="G$1" x="63.5" y="10.16"/>
<instance part="I2" gate="G$1" x="45.72" y="22.86" rot="R90"/>
<instance part="R1" gate="G$1" x="38.1" y="20.32" rot="R90"/>
<instance part="S1" gate="G$1" x="30.48" y="30.48"/>
<instance part="U1" gate="G$1" x="7.62" y="7.62"/>
<instance part="I1" gate="G$1" x="22.86" y="22.86"/>
<instance part="S2" gate="G$1" x="15.24" y="30.48"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$3" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="P$1"/>
<wire x1="7.62" y1="2.54" x2="7.62" y2="0" width="0.1524" layer="91"/>
<pinref part="B1" gate="G$1" pin="-"/>
<wire x1="7.62" y1="0" x2="22.86" y2="0" width="0.1524" layer="91"/>
<wire x1="22.86" y1="0" x2="22.86" y2="2.54" width="0.1524" layer="91"/>
<pinref part="P1" gate="G$1" pin="P$1"/>
<wire x1="50.8" y1="5.08" x2="50.8" y2="2.54" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="A"/>
<wire x1="50.8" y1="2.54" x2="50.8" y2="0" width="0.1524" layer="91"/>
<wire x1="50.8" y1="0" x2="38.1" y2="0" width="0.1524" layer="91"/>
<wire x1="38.1" y1="0" x2="38.1" y2="15.24" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="P$1"/>
<wire x1="50.8" y1="2.54" x2="63.5" y2="2.54" width="0.1524" layer="91"/>
<wire x1="63.5" y1="2.54" x2="63.5" y2="5.08" width="0.1524" layer="91"/>
<junction x="50.8" y="2.54"/>
<wire x1="22.86" y1="0" x2="38.1" y2="0" width="0.1524" layer="91"/>
<junction x="22.86" y="0"/>
<junction x="38.1" y="0"/>
<pinref part="X2" gate="G$1" pin="KL"/>
<wire x1="5.08" y1="0" x2="7.62" y2="0" width="0.1524" layer="91"/>
<junction x="7.62" y="0"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="S"/>
<pinref part="P1" gate="G$1" pin="P$2"/>
<wire x1="40.64" y1="20.32" x2="50.8" y2="20.32" width="0.1524" layer="91"/>
<wire x1="50.8" y1="20.32" x2="50.8" y2="17.78" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="P$2"/>
<wire x1="50.8" y1="17.78" x2="50.8" y2="15.24" width="0.1524" layer="91"/>
<wire x1="63.5" y1="15.24" x2="63.5" y2="17.78" width="0.1524" layer="91"/>
<wire x1="63.5" y1="17.78" x2="50.8" y2="17.78" width="0.1524" layer="91"/>
<junction x="50.8" y="17.78"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="I1" gate="G$1" pin="P$1"/>
<pinref part="B1" gate="G$1" pin="+"/>
<wire x1="22.86" y1="17.78" x2="22.86" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="S2" gate="G$1" pin="P"/>
<pinref part="X1" gate="G$1" pin="KL"/>
<wire x1="10.16" y1="30.48" x2="7.62" y2="30.48" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="P$2"/>
<wire x1="7.62" y1="30.48" x2="5.08" y2="30.48" width="0.1524" layer="91"/>
<wire x1="7.62" y1="12.7" x2="7.62" y2="30.48" width="0.1524" layer="91"/>
<junction x="7.62" y="30.48"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="S2" gate="G$1" pin="S"/>
<pinref part="I1" gate="G$1" pin="P$2"/>
<wire x1="20.32" y1="30.48" x2="22.86" y2="30.48" width="0.1524" layer="91"/>
<wire x1="22.86" y1="30.48" x2="22.86" y2="27.94" width="0.1524" layer="91"/>
<pinref part="S1" gate="G$1" pin="P"/>
<wire x1="22.86" y1="30.48" x2="25.4" y2="30.48" width="0.1524" layer="91"/>
<junction x="22.86" y="30.48"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="S1" gate="G$1" pin="S"/>
<pinref part="R1" gate="G$1" pin="B"/>
<wire x1="35.56" y1="30.48" x2="38.1" y2="30.48" width="0.1524" layer="91"/>
<wire x1="38.1" y1="30.48" x2="38.1" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
