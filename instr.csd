<Cabbage>
form caption("Signaldisplay Example") size(400, 300), colour(220, 220, 220), pluginID("def1")
checkbox bounds(116, 38, 150, 50), channel("checkbutton1"), text("Enable Tone", "Disable Tone")
</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL -M0 -m0d --displays
</CsOptions>
<CsInstruments>
; Initialize the global variables. 
sr = 44100
ksmps = 32
nchnls = 2
0dbfs = 1

giWave ftgen 1, 0, 4096, 10, 1, 1, 1, 1 
seed 0 
;basic usage
instr 1
    aSig randi 1, 200
    display aSig, .5, 1   
endin      

</CsInstruments>
<CsScore>
;causes Csound to run for about 7000 years...
f0 z
;starts instrument 1 and runs it for a week
i1 0 z
;i2 0 z
</CsScore>
</CsoundSynthesizer>