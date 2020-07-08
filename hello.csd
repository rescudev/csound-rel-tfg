<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>

instr 1
	prints "Hello World!%n"
	aSin      oscils    0dbfs/4, 440, 0
    out       aSin
endin

</CsInstruments>
<CsScore> 
i 1 0 1
e
</CsScore>
</CsoundSynthesizer> 