<CsoundSynthesizer>
<CsOptions>

</CsOptions>
<CsInstruments>
; Initialize the global variables. 
sr = 44100
ksmps = 32
0dbfs = 1

opcode SegundoGrado, ii, iii          
iVarA, iVarB, iVarC   xin            
ioutPos    =  ((iVarB*-1)+sqrt(iVarB^2 -(4*iVarA*iVarC)))/(2*iVarA)
ioutNeg    =  ((iVarB*-1)-sqrt(iVarB^2 -(4*iVarA*iVarC)))/(2*iVarA)
xout ioutPos, ioutNeg     
endop

instr 1
iVarA = 4
iVarB = 12
iVarC = 2
iResPos,iResNeg  SegundoGrado iVarA, iVarB, iVarC
print iResPos
print iResNeg
endin

</CsInstruments>
<CsScore>
i 1 0 1
</CsScore>
</CsoundSynthesizer>
