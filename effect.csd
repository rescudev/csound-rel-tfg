<Cabbage>
form caption("Untitled") size(400, 300), colour(58, 110, 182), pluginid("def1")
rslider bounds(10, 10, 100, 100), channel("slider1"), range(0, 1, .5), trackercolour("red"), outlinecolour(0, 0, 0, 50), textcolour("black")
button bounds(150, 10, 200, 40), channel("but1")

</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL -M0 -m0d 
</CsOptions>
<CsInstruments>
; Initialize the global variables. 
ksmps = 32
nchnls = 2
0dbfs = 1


instr 1
kSlider chnget "slider1"
kButton chnget "but1"
kChange changed kButton

if kChange == 1 then
    printks "Value of slider:%f\n", 1, kSlider ;prints value of channel every second
endif

endin

</CsInstruments>
<CsScore>
;causes Csound to run for about 7000 years...
f0 z
;starts instrument 1 and runs it for a week
i1 0 [60*60*24*7] 
</CsScore>
</CsoundSynthesizer>
