<CsoundSynthesizer>
; coded by Oeyvind Brandtsegg 2000, revised 2002

; midi instrument
; 4-operator FM synth, with triple detuned oscillators on the "main" oscillator
; it is wired like this:
;     4
;   / | \
;  3  |  2
;   \ | /
;     1
; where oscillators 4,3,2 modulate each other and oscillator 1,
; and oscillator 1 is actually three oscillators subtly detuned from each other to fatten the sound

; midi controller messages are used to change some parameters of the sound:
; controller number 1 affects filter cutoff frequency
; controller number 2 affects filter resonance
; controller number 2 also affects FM index
; everything should be played on midi channel 1

<CsOptions>

;CsoundAV command line, edit to suit your platform and choice of Csound version
-+rtmidi=mme -odac10 -b2048
;enable midi in and audio out

</CsOptions>


<CsInstruments>





	sr = 44100  
	kr = 441
	ksmps = 100
	nchnls = 2	
	
;********************* FM SUBBASS  *********************

	instr	1

inum	notnum
icps1	cpsmidi
icps	= icps1 * 0.5
iamp	ampmidi	2500

kctrl2	= 0.35 		; have been midi controller, for FM index

	klfo	oscil	0.5, 0.26 , 93
	klfo	= klfo + 0.5


	a_amp	linenr	iamp, 0.01, 0.01, 0.1
	k_env2	linsegr	0, 0.01, 1, 0.05, 1, 0.2, 0.3, 0.1, 0

	kfmndx	= klfo * 20 + (kctrl2*400) + 20		;fm index, amplitude of modulator

	a1	oscili	kfmndx, icps,   93
	afmcps	= a1+icps
	a2	oscili	a_amp,  afmcps, 93

	ipregain	= 1.4
	ipostgain	init 0.9
	ishape1		= 0.1 
	ishape2		= 1.3 
	a2	distort1 a2, ipregain, ipostgain, ishape1, ishape2 

	outs	a2, a2
	endin


;*********************

</CsInstruments>


<CsScore>



f93 0 65536 10   1    ;sine
f95 0 1024   7   0  4 1 196 0.9 624 -0.9 196 -1 4 0	;saw wave, supersaw

f0 6000 	; allows realtime midi playing for n seconds
e



</CsScore>


















<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>100</x>
 <y>100</y>
 <width>320</width>
 <height>240</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>255</r>
  <g>255</g>
  <b>255</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
