<CsoundSynthesizer>
<CsOptions>

</CsOptions>
<CsInstruments>
; Initialize the global variables. 
sr = 44100
ksmps = 32
0dbfs = 1

        opcode Lowpass, a, akk

        setksmps 1              ; need sr=kr
ain, ka1, ka2   xin             ; read input parameters
aout    init 0                  ; initialize output
aout    =  ain + ka1 + ka2  ; simple tone-like filter
        xout aout               ; write output

        endop

instr 1
asource = 1
kvalue1 = 1
kvalue2 = 1
print kvalue2
afiltered Lowpass asource, kvalue1, kvalue2

endin

</CsInstruments>
<CsScore>
i 1 0 1
e
</CsScore>
</CsoundSynthesizer>
