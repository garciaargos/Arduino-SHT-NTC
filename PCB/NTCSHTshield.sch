<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.6.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
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
<library name="docu-dummy">
<description>Dummy symbols</description>
<packages>
</packages>
<symbols>
<symbol name="RESISTOR">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="5.08" y2="0" width="0.1524" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="R" prefix="R">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="jumper">
<description>&lt;b&gt;Jumpers&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="JP3Q">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<wire x1="-3.81" y1="-2.159" x2="-3.81" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="2.54" x2="-1.27" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.159" x2="-0.889" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="2.54" x2="0.889" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.159" x2="0.889" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.159" x2="1.651" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.651" y1="2.54" x2="3.429" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.81" y1="2.159" x2="3.429" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.81" y1="2.159" x2="3.81" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-2.54" x2="3.81" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-2.54" x2="1.651" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-2.159" x2="1.651" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-2.159" x2="0.889" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.889" y1="-2.54" x2="-0.889" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.159" x2="-0.889" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.159" x2="-1.651" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="2.159" x2="-3.429" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="2.54" x2="-1.651" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-2.159" x2="-3.429" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.54" x2="-1.651" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="2" x="-2.54" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="3" x="0" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="4" x="0" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="5" x="2.54" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="6" x="2.54" y="1.27" drill="0.9144" shape="octagon"/>
<text x="-3.048" y="-4.191" size="1.27" layer="21" ratio="10">1</text>
<text x="-0.508" y="-4.191" size="1.27" layer="21" ratio="10">2</text>
<text x="2.032" y="-4.191" size="1.27" layer="21" ratio="10">3</text>
<text x="-3.429" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-5.842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.8448" y1="0.9652" x2="-2.2352" y2="1.5748" layer="51"/>
<rectangle x1="-0.3048" y1="0.9652" x2="0.3048" y2="1.5748" layer="51"/>
<rectangle x1="2.2352" y1="0.9652" x2="2.8448" y2="1.5748" layer="51"/>
<rectangle x1="-2.8448" y1="-1.5748" x2="-2.2352" y2="-0.9652" layer="51"/>
<rectangle x1="-0.3048" y1="-1.5748" x2="0.3048" y2="-0.9652" layer="51"/>
<rectangle x1="2.2352" y1="-1.5748" x2="2.8448" y2="-0.9652" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="J3">
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="3.81" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="3.81" x2="-2.54" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="-3.81" x2="-2.54" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="3.81" width="0.4064" layer="94"/>
<wire x1="0" y1="3.81" x2="0" y2="5.08" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="0" y1="-3.81" x2="0" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="3.81" width="0.4064" layer="94"/>
<wire x1="2.54" y1="3.81" x2="2.54" y2="5.08" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="2.54" y1="-3.81" x2="2.54" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-4.445" y1="5.08" x2="4.445" y2="5.08" width="0.4064" layer="94"/>
<wire x1="4.445" y1="5.08" x2="4.445" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="4.445" y1="-5.08" x2="-4.445" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-4.445" y1="-5.08" x2="-4.445" y2="5.08" width="0.4064" layer="94"/>
<text x="-5.08" y="-5.08" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="6.985" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="1" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="2" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="3" x="0" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="4" x="0" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="5" x="2.54" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="6" x="2.54" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="JP3Q" prefix="JP" uservalue="yes">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<gates>
<gate name="B" symbol="J3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="JP3Q">
<connects>
<connect gate="B" pin="1" pad="1"/>
<connect gate="B" pin="2" pad="2"/>
<connect gate="B" pin="3" pad="3"/>
<connect gate="B" pin="4" pad="4"/>
<connect gate="B" pin="5" pad="5"/>
<connect gate="B" pin="6" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lsta">
<description>&lt;b&gt;Female Headers etc.&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
FE = female&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="FE06-2">
<description>&lt;b&gt;FEMALE HEADER&lt;/b&gt;</description>
<wire x1="-6.985" y1="3.048" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-2.413" x2="7.62" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-2.413" x2="-7.62" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-3.048" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="2.413" x2="-6.985" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.985" y1="3.048" x2="7.62" y2="2.413" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.985" y1="-3.048" x2="7.62" y2="-2.413" width="0.1524" layer="21" curve="90"/>
<wire x1="-7.62" y1="-2.413" x2="-6.985" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<circle x="-6.35" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-6.35" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-3.81" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-3.81" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-1.27" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-1.27" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="1.27" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="1.27" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="3.81" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="3.81" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-6.35" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-6.35" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-3.81" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="1.27" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="3.81" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-3.81" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="1.27" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="3.81" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="6.35" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="6.35" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="6.35" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="6.35" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<pad name="1" x="-6.35" y="1.27" drill="0.9144"/>
<pad name="2" x="-6.35" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="3" x="-3.81" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="4" x="-3.81" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="5" x="-1.27" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="6" x="-1.27" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="7" x="1.27" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="8" x="1.27" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="9" x="3.81" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="10" x="3.81" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="11" x="6.35" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="12" x="6.35" y="-1.27" drill="0.9144" shape="octagon"/>
<text x="-2.54" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.858" y="3.429" size="1.27" layer="21" ratio="10">1</text>
<text x="5.334" y="-4.699" size="1.27" layer="21" ratio="10">12</text>
<text x="-7.62" y="-4.699" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="FE06-2">
<wire x1="3.81" y1="-7.62" x2="-3.81" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="-1.905" y1="-0.635" x2="-1.905" y2="0.635" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="-3.175" x2="-1.905" y2="-1.905" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="-5.715" x2="-1.905" y2="-4.445" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="0.635" x2="1.905" y2="-0.635" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-1.905" x2="1.905" y2="-3.175" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-4.445" x2="1.905" y2="-5.715" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="4.445" x2="-1.905" y2="5.715" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="1.905" x2="-1.905" y2="3.175" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="5.715" x2="1.905" y2="4.445" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="3.175" x2="1.905" y2="1.905" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="6.985" x2="-1.905" y2="8.255" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="8.255" x2="1.905" y2="6.985" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-3.81" y1="10.16" x2="-3.81" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-7.62" x2="3.81" y2="10.16" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="10.16" x2="3.81" y2="10.16" width="0.4064" layer="94"/>
<text x="-3.81" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="10.922" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="3" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="5" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="2" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="9" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="8" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="10" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="11" x="-7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="12" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FE06-2" prefix="SV" uservalue="yes">
<description>&lt;b&gt;FEMALE HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="FE06-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="FE06-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-molex">
<description>&lt;b&gt;Molex Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="22-23-2061">
<description>.100" (2.54mm) Center Header - 6 Pin</description>
<wire x1="-7.62" y1="3.175" x2="7.62" y2="3.175" width="0.254" layer="21"/>
<wire x1="7.62" y1="3.175" x2="7.62" y2="1.27" width="0.254" layer="21"/>
<wire x1="7.62" y1="1.27" x2="7.62" y2="-3.175" width="0.254" layer="21"/>
<wire x1="7.62" y1="-3.175" x2="-7.62" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-7.62" y1="-3.175" x2="-7.62" y2="1.27" width="0.254" layer="21"/>
<wire x1="-7.62" y1="1.27" x2="-7.62" y2="3.175" width="0.254" layer="21"/>
<wire x1="-7.62" y1="1.27" x2="7.62" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="1" shape="long" rot="R90"/>
<pad name="2" x="-3.81" y="0" drill="1" shape="long" rot="R90"/>
<pad name="3" x="-1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="4" x="1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="5" x="3.81" y="0" drill="1" shape="long" rot="R90"/>
<pad name="6" x="6.35" y="0" drill="1" shape="long" rot="R90"/>
<text x="-7.62" y="3.81" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-7.62" y="-5.08" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="22-23-2081">
<description>.100" (2.54mm) Center Header - 8 Pin</description>
<wire x1="-10.16" y1="3.175" x2="10.16" y2="3.175" width="0.254" layer="21"/>
<wire x1="10.16" y1="3.175" x2="10.16" y2="1.27" width="0.254" layer="21"/>
<wire x1="10.16" y1="1.27" x2="10.16" y2="-3.175" width="0.254" layer="21"/>
<wire x1="10.16" y1="-3.175" x2="-10.16" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-10.16" y1="-3.175" x2="-10.16" y2="1.27" width="0.254" layer="21"/>
<wire x1="-10.16" y1="1.27" x2="-10.16" y2="3.175" width="0.254" layer="21"/>
<wire x1="-10.16" y1="1.27" x2="10.16" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-8.89" y="0" drill="1" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="0" drill="1" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="0" drill="1" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="0" drill="1" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="0" drill="1" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="0" drill="1" shape="long" rot="R90"/>
<text x="-10.16" y="3.81" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.16" y="-5.08" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="22-23-2101">
<description>.100" (2.54mm) Center Header - 10 Pin</description>
<wire x1="-12.7" y1="3.175" x2="12.7" y2="3.175" width="0.254" layer="21"/>
<wire x1="12.7" y1="3.175" x2="12.7" y2="1.27" width="0.254" layer="21"/>
<wire x1="12.7" y1="1.27" x2="12.7" y2="-3.175" width="0.254" layer="21"/>
<wire x1="12.7" y1="-3.175" x2="-12.7" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-12.7" y1="-3.175" x2="-12.7" y2="1.27" width="0.254" layer="21"/>
<wire x1="-12.7" y1="1.27" x2="-12.7" y2="3.175" width="0.254" layer="21"/>
<wire x1="-12.7" y1="1.27" x2="12.7" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-11.43" y="0" drill="1" shape="long" rot="R90"/>
<pad name="2" x="-8.89" y="0" drill="1" shape="long" rot="R90"/>
<pad name="3" x="-6.35" y="0" drill="1" shape="long" rot="R90"/>
<pad name="4" x="-3.81" y="0" drill="1" shape="long" rot="R90"/>
<pad name="5" x="-1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="6" x="1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="7" x="3.81" y="0" drill="1" shape="long" rot="R90"/>
<pad name="8" x="6.35" y="0" drill="1" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="0" drill="1" shape="long" rot="R90"/>
<pad name="10" x="11.43" y="0" drill="1" shape="long" rot="R90"/>
<text x="-12.7" y="3.81" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-12.7" y="-5.08" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="22-23-2041">
<description>.100" (2.54mm) Center Header - 4 Pin</description>
<wire x1="-5.08" y1="3.175" x2="5.08" y2="3.175" width="0.254" layer="21"/>
<wire x1="5.08" y1="3.175" x2="5.08" y2="1.27" width="0.254" layer="21"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-3.175" width="0.254" layer="21"/>
<wire x1="5.08" y1="-3.175" x2="-5.08" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-5.08" y1="-3.175" x2="-5.08" y2="1.27" width="0.254" layer="21"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="3.175" width="0.254" layer="21"/>
<wire x1="-5.08" y1="1.27" x2="5.08" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="1" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="0" drill="1" shape="long" rot="R90"/>
<text x="-5.08" y="3.81" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-5.08" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="MV">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<text x="-0.762" y="1.397" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="M">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="22-23-2061" prefix="X" uservalue="yes">
<description>.100" (2.54mm) Center Header - 6 Pin</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="5.08" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="2.54" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="M" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-4" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
<gate name="-5" symbol="M" x="0" y="-5.08" addlevel="always" swaplevel="1"/>
<gate name="-6" symbol="M" x="0" y="-7.62" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="22-23-2061">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-5" pin="S" pad="5"/>
<connect gate="-6" pin="S" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="22-23-2061" constant="no"/>
<attribute name="OC_FARNELL" value="1462922" constant="no"/>
<attribute name="OC_NEWARK" value="27C1933" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="22-23-2081" prefix="X">
<description>.100" (2.54mm) Center Header - 8 Pin</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="7.62" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="5.08" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="M" x="0" y="2.54" addlevel="always" swaplevel="1"/>
<gate name="-4" symbol="M" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-5" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
<gate name="-6" symbol="M" x="0" y="-5.08" addlevel="always" swaplevel="1"/>
<gate name="-7" symbol="M" x="0" y="-7.62" addlevel="always" swaplevel="1"/>
<gate name="-8" symbol="M" x="0" y="-10.16" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="22-23-2081">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-5" pin="S" pad="5"/>
<connect gate="-6" pin="S" pad="6"/>
<connect gate="-7" pin="S" pad="7"/>
<connect gate="-8" pin="S" pad="8"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="22-23-2081" constant="no"/>
<attribute name="OC_FARNELL" value="1756826" constant="no"/>
<attribute name="OC_NEWARK" value="01C7592" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="22-23-2101" prefix="X">
<description>.100" (2.54mm) Center Header - 10 Pin</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="10.16" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="7.62" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="M" x="0" y="5.08" addlevel="always" swaplevel="1"/>
<gate name="-4" symbol="M" x="0" y="2.54" addlevel="always" swaplevel="1"/>
<gate name="-5" symbol="M" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-6" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
<gate name="-7" symbol="M" x="0" y="-5.08" addlevel="always" swaplevel="1"/>
<gate name="-8" symbol="M" x="0" y="-7.62" addlevel="always" swaplevel="1"/>
<gate name="-9" symbol="M" x="0" y="-10.16" addlevel="always" swaplevel="1"/>
<gate name="-10" symbol="M" x="0" y="-12.7" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="22-23-2101">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-10" pin="S" pad="10"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-5" pin="S" pad="5"/>
<connect gate="-6" pin="S" pad="6"/>
<connect gate="-7" pin="S" pad="7"/>
<connect gate="-8" pin="S" pad="8"/>
<connect gate="-9" pin="S" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="22-23-2101" constant="no"/>
<attribute name="OC_FARNELL" value="1756828" constant="no"/>
<attribute name="OC_NEWARK" value="94C0765" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="22-23-2041" prefix="X">
<description>.100" (2.54mm) Center Header - 4 Pin</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="2.54" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
<gate name="-4" symbol="M" x="0" y="-5.08" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="22-23-2041">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="22-23-2041" constant="no"/>
<attribute name="OC_FARNELL" value="1462920" constant="no"/>
<attribute name="OC_NEWARK" value="38C0355" constant="no"/>
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
<part name="R1B" library="docu-dummy" deviceset="R" device=""/>
<part name="R2A" library="docu-dummy" deviceset="R" device=""/>
<part name="R3A" library="docu-dummy" deviceset="R" device=""/>
<part name="R4B" library="docu-dummy" deviceset="R" device=""/>
<part name="R5A" library="docu-dummy" deviceset="R" device=""/>
<part name="R6B" library="docu-dummy" deviceset="R" device=""/>
<part name="R7" library="docu-dummy" deviceset="R" device=""/>
<part name="R8" library="docu-dummy" deviceset="R" device=""/>
<part name="R9" library="docu-dummy" deviceset="R" device=""/>
<part name="R10" library="docu-dummy" deviceset="R" device=""/>
<part name="R1A" library="docu-dummy" deviceset="R" device="" value="1k"/>
<part name="R1C" library="docu-dummy" deviceset="R" device=""/>
<part name="R2B" library="docu-dummy" deviceset="R" device=""/>
<part name="R2C" library="docu-dummy" deviceset="R" device=""/>
<part name="R3C" library="docu-dummy" deviceset="R" device=""/>
<part name="R3B" library="docu-dummy" deviceset="R" device=""/>
<part name="R4C" library="docu-dummy" deviceset="R" device=""/>
<part name="R4A" library="docu-dummy" deviceset="R" device=""/>
<part name="R5B" library="docu-dummy" deviceset="R" device=""/>
<part name="R5C" library="docu-dummy" deviceset="R" device=""/>
<part name="R6C" library="docu-dummy" deviceset="R" device=""/>
<part name="R6A" library="docu-dummy" deviceset="R" device=""/>
<part name="JP1" library="jumper" deviceset="JP3Q" device=""/>
<part name="JP2" library="jumper" deviceset="JP3Q" device=""/>
<part name="JP3" library="jumper" deviceset="JP3Q" device=""/>
<part name="JP4" library="jumper" deviceset="JP3Q" device=""/>
<part name="JP5" library="jumper" deviceset="JP3Q" device=""/>
<part name="JP6" library="jumper" deviceset="JP3Q" device=""/>
<part name="NTC" library="con-lsta" deviceset="FE06-2" device=""/>
<part name="A" library="con-molex" deviceset="22-23-2061" device=""/>
<part name="POWER" library="con-molex" deviceset="22-23-2081" device=""/>
<part name="DIGITAL1" library="con-molex" deviceset="22-23-2081" device=""/>
<part name="DIGITAL2" library="con-molex" deviceset="22-23-2101" device=""/>
<part name="SHT1" library="con-molex" deviceset="22-23-2041" device=""/>
<part name="SHT2" library="con-molex" deviceset="22-23-2041" device=""/>
<part name="SHT3" library="con-molex" deviceset="22-23-2041" device=""/>
<part name="SHT4" library="con-molex" deviceset="22-23-2041" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="-12.7" y="96.52" size="1.778" layer="91">5V</text>
<text x="152.4" y="10.16" size="1.778" layer="91">GND</text>
<text x="101.6" y="73.66" size="1.778" layer="91">GND</text>
<text x="99.06" y="58.42" size="1.778" layer="91">GND</text>
<text x="96.52" y="40.64" size="1.778" layer="91">GND</text>
<text x="111.76" y="22.86" size="1.778" layer="91">GND</text>
<text x="152.4" y="81.28" size="1.778" layer="91">GND</text>
<text x="-22.86" y="88.9" size="1.778" layer="91">GNDa</text>
<text x="101.6" y="81.28" size="1.778" layer="91">SCK1</text>
<text x="101.6" y="63.5" size="1.778" layer="91">SCK2</text>
<text x="101.6" y="45.72" size="1.778" layer="91">SCK3</text>
<text x="101.6" y="27.94" size="1.778" layer="91">SCK4</text>
<text x="83.82" y="71.12" size="1.778" layer="91">DATA1</text>
<text x="78.74" y="53.34" size="1.778" layer="91">DATA2</text>
<text x="76.2" y="38.1" size="1.778" layer="91">DATA3</text>
<text x="78.74" y="17.78" size="1.778" layer="91">DATA4</text>
<text x="81.28" y="96.52" size="1.778" layer="91">VDD</text>
<text x="96.52" y="78.74" size="1.778" layer="91">VDD</text>
<text x="96.52" y="60.96" size="1.778" layer="91">VDD</text>
<text x="96.52" y="43.18" size="1.778" layer="91">VDD</text>
<text x="96.52" y="25.4" size="1.778" layer="91">VDD</text>
</plain>
<instances>
<instance part="R1B" gate="G$1" x="-17.78" y="73.66"/>
<instance part="R2A" gate="G$1" x="-17.78" y="63.5"/>
<instance part="R3A" gate="G$1" x="-17.78" y="50.8"/>
<instance part="R4B" gate="G$1" x="-17.78" y="35.56" rot="MR0"/>
<instance part="R5A" gate="G$1" x="-17.78" y="25.4"/>
<instance part="R6B" gate="G$1" x="-17.78" y="10.16"/>
<instance part="R7" gate="G$1" x="78.74" y="78.74"/>
<instance part="R8" gate="G$1" x="78.74" y="60.96"/>
<instance part="R9" gate="G$1" x="78.74" y="43.18"/>
<instance part="R10" gate="G$1" x="78.74" y="25.4"/>
<instance part="R1A" gate="G$1" x="-17.78" y="76.2"/>
<instance part="R1C" gate="G$1" x="-17.78" y="71.12"/>
<instance part="R2B" gate="G$1" x="-17.78" y="60.96"/>
<instance part="R2C" gate="G$1" x="-17.78" y="58.42"/>
<instance part="R3C" gate="G$1" x="-17.78" y="45.72"/>
<instance part="R3B" gate="G$1" x="-17.78" y="48.26"/>
<instance part="R4C" gate="G$1" x="-17.78" y="33.02"/>
<instance part="R4A" gate="G$1" x="-17.78" y="38.1"/>
<instance part="R5B" gate="G$1" x="-17.78" y="22.86"/>
<instance part="R5C" gate="G$1" x="-17.78" y="20.32"/>
<instance part="R6C" gate="G$1" x="-17.78" y="7.62"/>
<instance part="R6A" gate="G$1" x="-17.78" y="12.7"/>
<instance part="JP1" gate="B" x="-5.08" y="73.66" rot="R90"/>
<instance part="JP2" gate="B" x="-5.08" y="60.96" rot="R90"/>
<instance part="JP3" gate="B" x="-5.08" y="48.26" rot="R90"/>
<instance part="JP4" gate="B" x="-5.08" y="35.56" rot="R90"/>
<instance part="JP5" gate="B" x="-5.08" y="22.86" rot="R90"/>
<instance part="JP6" gate="B" x="-5.08" y="10.16" rot="R90"/>
<instance part="NTC" gate="G$1" x="45.72" y="73.66" rot="R90"/>
<instance part="A" gate="-1" x="27.94" y="50.8"/>
<instance part="A" gate="-2" x="27.94" y="48.26"/>
<instance part="A" gate="-3" x="27.94" y="45.72"/>
<instance part="A" gate="-4" x="27.94" y="43.18"/>
<instance part="A" gate="-5" x="27.94" y="40.64"/>
<instance part="A" gate="-6" x="27.94" y="38.1"/>
<instance part="POWER" gate="-1" x="-2.54" y="106.68"/>
<instance part="POWER" gate="-2" x="-2.54" y="104.14"/>
<instance part="POWER" gate="-3" x="-2.54" y="101.6"/>
<instance part="POWER" gate="-4" x="-2.54" y="99.06"/>
<instance part="POWER" gate="-5" x="-2.54" y="96.52"/>
<instance part="POWER" gate="-6" x="-2.54" y="93.98"/>
<instance part="POWER" gate="-7" x="-2.54" y="91.44"/>
<instance part="POWER" gate="-8" x="-2.54" y="88.9"/>
<instance part="DIGITAL1" gate="-1" x="142.24" y="20.32" rot="R180"/>
<instance part="DIGITAL1" gate="-2" x="142.24" y="22.86" rot="R180"/>
<instance part="DIGITAL1" gate="-3" x="142.24" y="25.4" rot="R180"/>
<instance part="DIGITAL1" gate="-4" x="142.24" y="27.94" rot="R180"/>
<instance part="DIGITAL1" gate="-5" x="142.24" y="30.48" rot="R180"/>
<instance part="DIGITAL1" gate="-6" x="142.24" y="33.02" rot="R180"/>
<instance part="DIGITAL1" gate="-7" x="142.24" y="35.56" rot="R180"/>
<instance part="DIGITAL1" gate="-8" x="142.24" y="38.1" rot="R180"/>
<instance part="DIGITAL2" gate="-1" x="142.24" y="66.04" rot="R180"/>
<instance part="DIGITAL2" gate="-2" x="142.24" y="68.58" rot="R180"/>
<instance part="DIGITAL2" gate="-3" x="142.24" y="71.12" rot="R180"/>
<instance part="DIGITAL2" gate="-4" x="142.24" y="73.66" rot="R180"/>
<instance part="DIGITAL2" gate="-5" x="142.24" y="76.2" rot="R180"/>
<instance part="DIGITAL2" gate="-6" x="142.24" y="78.74" rot="R180"/>
<instance part="DIGITAL2" gate="-7" x="142.24" y="81.28" rot="R180"/>
<instance part="DIGITAL2" gate="-8" x="142.24" y="83.82" rot="R180"/>
<instance part="DIGITAL2" gate="-9" x="142.24" y="86.36" rot="R180"/>
<instance part="DIGITAL2" gate="-10" x="142.24" y="88.9" rot="R180"/>
<instance part="SHT1" gate="-1" x="86.36" y="27.94"/>
<instance part="SHT1" gate="-2" x="86.36" y="25.4"/>
<instance part="SHT1" gate="-3" x="86.36" y="22.86"/>
<instance part="SHT1" gate="-4" x="86.36" y="20.32"/>
<instance part="SHT2" gate="-1" x="86.36" y="45.72"/>
<instance part="SHT2" gate="-2" x="86.36" y="43.18"/>
<instance part="SHT2" gate="-3" x="86.36" y="40.64"/>
<instance part="SHT2" gate="-4" x="86.36" y="38.1"/>
<instance part="SHT3" gate="-1" x="86.36" y="63.5"/>
<instance part="SHT3" gate="-2" x="86.36" y="60.96"/>
<instance part="SHT3" gate="-3" x="86.36" y="58.42"/>
<instance part="SHT3" gate="-4" x="86.36" y="55.88"/>
<instance part="SHT4" gate="-1" x="86.36" y="81.28"/>
<instance part="SHT4" gate="-2" x="86.36" y="78.74"/>
<instance part="SHT4" gate="-3" x="86.36" y="76.2"/>
<instance part="SHT4" gate="-4" x="86.36" y="73.66"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<wire x1="-22.86" y1="76.2" x2="-22.86" y2="73.66" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="73.66" x2="-22.86" y2="71.12" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="73.66" x2="-27.94" y2="73.66" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="73.66" x2="-27.94" y2="60.96" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="63.5" x2="-22.86" y2="60.96" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="60.96" x2="-22.86" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="60.96" x2="-22.86" y2="60.96" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="60.96" x2="-27.94" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="50.8" x2="-22.86" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="48.26" x2="-22.86" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="48.26" x2="-22.86" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="48.26" x2="-27.94" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="38.1" x2="-22.86" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="35.56" x2="-22.86" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="35.56" x2="-22.86" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="35.56" x2="-27.94" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="22.86" x2="-22.86" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="22.86" x2="-27.94" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="12.7" x2="-22.86" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="10.16" x2="-22.86" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="10.16" x2="-22.86" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="91.44" x2="-27.94" y2="73.66" width="0.1524" layer="91"/>
<junction x="-27.94" y="73.66"/>
<junction x="-27.94" y="60.96"/>
<junction x="-27.94" y="48.26"/>
<junction x="-27.94" y="35.56"/>
<junction x="-27.94" y="22.86"/>
<wire x1="-27.94" y1="91.44" x2="-2.54" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<wire x1="-22.86" y1="25.4" x2="-22.86" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="JP2" gate="B" pin="5"/>
<pinref part="JP2" gate="B" pin="3"/>
<wire x1="2.54" y1="63.5" x2="2.54" y2="60.96" width="0.1524" layer="91"/>
<pinref part="JP2" gate="B" pin="1"/>
<wire x1="2.54" y1="60.96" x2="2.54" y2="58.42" width="0.1524" layer="91"/>
<pinref part="NTC" gate="G$1" pin="9"/>
<wire x1="40.64" y1="66.04" x2="27.94" y2="48.26" width="0.1524" layer="91"/>
<wire x1="2.54" y1="60.96" x2="15.24" y2="48.26" width="0.1524" layer="91"/>
<wire x1="15.24" y1="48.26" x2="27.94" y2="48.26" width="0.1524" layer="91"/>
<junction x="2.54" y="60.96"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="JP4" gate="B" pin="5"/>
<pinref part="JP4" gate="B" pin="3"/>
<wire x1="2.54" y1="38.1" x2="2.54" y2="35.56" width="0.1524" layer="91"/>
<pinref part="JP4" gate="B" pin="1"/>
<wire x1="2.54" y1="35.56" x2="2.54" y2="33.02" width="0.1524" layer="91"/>
<pinref part="NTC" gate="G$1" pin="5"/>
<wire x1="45.72" y1="66.04" x2="27.94" y2="43.18" width="0.1524" layer="91"/>
<wire x1="2.54" y1="38.1" x2="7.62" y2="43.18" width="0.1524" layer="91"/>
<wire x1="7.62" y1="43.18" x2="27.94" y2="43.18" width="0.1524" layer="91"/>
<junction x="2.54" y="38.1"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="JP6" gate="B" pin="5"/>
<pinref part="JP6" gate="B" pin="3"/>
<wire x1="2.54" y1="12.7" x2="2.54" y2="10.16" width="0.1524" layer="91"/>
<pinref part="JP6" gate="B" pin="1"/>
<wire x1="2.54" y1="10.16" x2="2.54" y2="7.62" width="0.1524" layer="91"/>
<pinref part="NTC" gate="G$1" pin="1"/>
<wire x1="50.8" y1="66.04" x2="27.94" y2="38.1" width="0.1524" layer="91"/>
<wire x1="2.54" y1="10.16" x2="27.94" y2="35.56" width="0.1524" layer="91"/>
<wire x1="27.94" y1="35.56" x2="27.94" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="NTC" gate="G$1" pin="2"/>
<pinref part="NTC" gate="G$1" pin="4"/>
<wire x1="50.8" y1="81.28" x2="48.26" y2="81.28" width="0.1524" layer="91"/>
<pinref part="NTC" gate="G$1" pin="6"/>
<wire x1="48.26" y1="81.28" x2="45.72" y2="81.28" width="0.1524" layer="91"/>
<pinref part="NTC" gate="G$1" pin="8"/>
<wire x1="45.72" y1="81.28" x2="43.18" y2="81.28" width="0.1524" layer="91"/>
<pinref part="NTC" gate="G$1" pin="10"/>
<wire x1="43.18" y1="81.28" x2="40.64" y2="81.28" width="0.1524" layer="91"/>
<pinref part="NTC" gate="G$1" pin="12"/>
<wire x1="40.64" y1="81.28" x2="38.1" y2="81.28" width="0.1524" layer="91"/>
<wire x1="43.18" y1="81.28" x2="27.94" y2="96.52" width="0.1524" layer="91"/>
<wire x1="27.94" y1="96.52" x2="-2.54" y2="96.52" width="0.1524" layer="91"/>
<junction x="43.18" y="81.28"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="NTC" gate="G$1" pin="11"/>
<wire x1="38.1" y1="66.04" x2="27.94" y2="50.8" width="0.1524" layer="91"/>
<pinref part="JP1" gate="B" pin="5"/>
<pinref part="JP1" gate="B" pin="3"/>
<wire x1="2.54" y1="76.2" x2="2.54" y2="73.66" width="0.1524" layer="91"/>
<pinref part="JP1" gate="B" pin="1"/>
<wire x1="2.54" y1="73.66" x2="2.54" y2="71.12" width="0.1524" layer="91"/>
<wire x1="27.94" y1="50.8" x2="2.54" y2="73.66" width="0.1524" layer="91"/>
<junction x="2.54" y="73.66"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="NTC" gate="G$1" pin="7"/>
<wire x1="43.18" y1="66.04" x2="27.94" y2="45.72" width="0.1524" layer="91"/>
<pinref part="JP3" gate="B" pin="5"/>
<pinref part="JP3" gate="B" pin="3"/>
<wire x1="2.54" y1="50.8" x2="2.54" y2="48.26" width="0.1524" layer="91"/>
<pinref part="JP3" gate="B" pin="1"/>
<wire x1="2.54" y1="48.26" x2="2.54" y2="45.72" width="0.1524" layer="91"/>
<wire x1="27.94" y1="45.72" x2="2.54" y2="45.72" width="0.1524" layer="91"/>
<junction x="2.54" y="45.72"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="NTC" gate="G$1" pin="3"/>
<wire x1="48.26" y1="66.04" x2="27.94" y2="40.64" width="0.1524" layer="91"/>
<wire x1="27.94" y1="40.64" x2="15.24" y2="40.64" width="0.1524" layer="91"/>
<pinref part="JP5" gate="B" pin="5"/>
<pinref part="JP5" gate="B" pin="3"/>
<wire x1="2.54" y1="25.4" x2="2.54" y2="22.86" width="0.1524" layer="91"/>
<pinref part="JP5" gate="B" pin="1"/>
<wire x1="2.54" y1="22.86" x2="2.54" y2="20.32" width="0.1524" layer="91"/>
<wire x1="15.24" y1="40.64" x2="2.54" y2="27.94" width="0.1524" layer="91"/>
<wire x1="2.54" y1="27.94" x2="2.54" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<wire x1="73.66" y1="55.88" x2="73.66" y2="60.96" width="0.1524" layer="91"/>
<wire x1="73.66" y1="55.88" x2="134.62" y2="55.88" width="0.1524" layer="91"/>
<wire x1="134.62" y1="55.88" x2="134.62" y2="35.56" width="0.1524" layer="91"/>
<wire x1="134.62" y1="35.56" x2="142.24" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<wire x1="73.66" y1="78.74" x2="73.66" y2="73.66" width="0.1524" layer="91"/>
<wire x1="73.66" y1="73.66" x2="93.98" y2="73.66" width="0.1524" layer="91"/>
<wire x1="93.98" y1="73.66" x2="93.98" y2="68.58" width="0.1524" layer="91"/>
<wire x1="93.98" y1="68.58" x2="121.92" y2="68.58" width="0.1524" layer="91"/>
<wire x1="121.92" y1="68.58" x2="121.92" y2="66.04" width="0.1524" layer="91"/>
<wire x1="121.92" y1="66.04" x2="142.24" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="86.36" y1="27.94" x2="142.24" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<wire x1="86.36" y1="33.02" x2="111.76" y2="33.02" width="0.1524" layer="91"/>
<wire x1="111.76" y1="33.02" x2="111.76" y2="30.48" width="0.1524" layer="91"/>
<wire x1="111.76" y1="30.48" x2="142.24" y2="30.48" width="0.1524" layer="91"/>
<wire x1="73.66" y1="43.18" x2="73.66" y2="38.1" width="0.1524" layer="91"/>
<wire x1="73.66" y1="38.1" x2="86.36" y2="38.1" width="0.1524" layer="91"/>
<wire x1="86.36" y1="33.02" x2="86.36" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<wire x1="86.36" y1="45.72" x2="114.3" y2="45.72" width="0.1524" layer="91"/>
<wire x1="114.3" y1="45.72" x2="114.3" y2="33.02" width="0.1524" layer="91"/>
<wire x1="114.3" y1="33.02" x2="142.24" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<wire x1="86.36" y1="63.5" x2="119.38" y2="63.5" width="0.1524" layer="91"/>
<wire x1="119.38" y1="63.5" x2="119.38" y2="38.1" width="0.1524" layer="91"/>
<wire x1="119.38" y1="38.1" x2="142.24" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<wire x1="86.36" y1="76.2" x2="127" y2="76.2" width="0.1524" layer="91"/>
<wire x1="127" y1="76.2" x2="127" y2="81.28" width="0.1524" layer="91"/>
<wire x1="86.36" y1="22.86" x2="111.76" y2="22.86" width="0.1524" layer="91"/>
<wire x1="111.76" y1="22.86" x2="111.76" y2="10.16" width="0.1524" layer="91"/>
<wire x1="160.02" y1="10.16" x2="160.02" y2="58.42" width="0.1524" layer="91"/>
<wire x1="160.02" y1="58.42" x2="160.02" y2="81.28" width="0.1524" layer="91"/>
<wire x1="160.02" y1="81.28" x2="142.24" y2="81.28" width="0.1524" layer="91"/>
<wire x1="142.24" y1="81.28" x2="127" y2="81.28" width="0.1524" layer="91"/>
<wire x1="111.76" y1="10.16" x2="160.02" y2="10.16" width="0.1524" layer="91"/>
<wire x1="86.36" y1="58.42" x2="160.02" y2="58.42" width="0.1524" layer="91"/>
<junction x="160.02" y="58.42"/>
<junction x="142.24" y="81.28"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<wire x1="86.36" y1="81.28" x2="124.46" y2="81.28" width="0.1524" layer="91"/>
<wire x1="124.46" y1="81.28" x2="124.46" y2="68.58" width="0.1524" layer="91"/>
<wire x1="124.46" y1="68.58" x2="142.24" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<wire x1="81.28" y1="78.74" x2="81.28" y2="88.9" width="0.1524" layer="91"/>
<wire x1="81.28" y1="88.9" x2="83.82" y2="88.9" width="0.1524" layer="91"/>
<wire x1="83.82" y1="88.9" x2="83.82" y2="93.98" width="0.1524" layer="91"/>
<wire x1="83.82" y1="93.98" x2="149.86" y2="93.98" width="0.1524" layer="91"/>
<wire x1="149.86" y1="93.98" x2="149.86" y2="76.2" width="0.1524" layer="91"/>
<wire x1="149.86" y1="76.2" x2="142.24" y2="76.2" width="0.1524" layer="91"/>
<wire x1="86.36" y1="60.96" x2="149.86" y2="60.96" width="0.1524" layer="91"/>
<wire x1="149.86" y1="60.96" x2="149.86" y2="76.2" width="0.1524" layer="91"/>
<wire x1="86.36" y1="43.18" x2="149.86" y2="43.18" width="0.1524" layer="91"/>
<wire x1="149.86" y1="43.18" x2="149.86" y2="60.96" width="0.1524" layer="91"/>
<wire x1="81.28" y1="25.4" x2="81.28" y2="35.56" width="0.1524" layer="91"/>
<wire x1="81.28" y1="35.56" x2="68.58" y2="35.56" width="0.1524" layer="91"/>
<wire x1="68.58" y1="35.56" x2="68.58" y2="93.98" width="0.1524" layer="91"/>
<wire x1="68.58" y1="93.98" x2="83.82" y2="93.98" width="0.1524" layer="91"/>
<junction x="83.82" y="93.98"/>
<junction x="149.86" y="76.2"/>
<junction x="149.86" y="60.96"/>
<junction x="81.28" y="78.74"/>
<junction x="81.28" y="25.4"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<wire x1="73.66" y1="25.4" x2="73.66" y2="20.32" width="0.1524" layer="91"/>
<wire x1="73.66" y1="20.32" x2="127" y2="20.32" width="0.1524" layer="91"/>
<wire x1="127" y1="20.32" x2="127" y2="25.4" width="0.1524" layer="91"/>
<wire x1="127" y1="25.4" x2="142.24" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
