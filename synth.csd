<Cabbage>
form caption("Untitled") size(400, 300), colour(58, 110, 182), pluginid("def1")
keyboard bounds(8, 158, 381, 95)
gentable bounds(10, 10, 380, 180), tablenumber(1)
</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL -M0 -m0d --midi-key-cps=4 --midi-velocity-amp=5
</CsOptions>
<CsInstruments>
; Initialize the global variables. 
ksmps = 32
nchnls = 2
0dbfs = 1

;instrument will be triggered by keyboard widget
instr 1
a1 oscili p5, p4, 1 ;p5 is from midi-velocity-amp, p4 from midi-key-cps, 1 is from f1
outs a1, a1
endin

</CsInstruments>
<CsScore>
f1 0 1024 10 1 .5 .25 .20 .125;in the table
f0 3600
</CsScore>
</CsoundSynthesizer>
