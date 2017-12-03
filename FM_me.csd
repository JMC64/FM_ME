<Cabbage>

#define PROPERTY_SLIDER_OSCA colour(3, 1, 108, 255) colour(3, 1, 108, 255) fontcolour("white") outlinecolour(39, 6, 142, 255) textcolour(6, 1, 65, 255) trackercolour(255, 40, 53, 255)
#define PROPERTY_CHKBOX_OSCA colour:1(255, 40, 53, 255) colour:1(255, 40, 53, 255) fontcolour:0(0, 0, 0, 255) fontcolour:1(0, 0, 0, 255) 
#define PROPERTY_BUT_OSCA colour:0(57, 127, 243, 255) colour:0(57, 127, 243, 255) colour:1(34, 49, 190, 255) fontcolour("white")
#define PROPERTY_SLIDER_OSCA2 colour(3, 1, 108, 255) colour(3, 1, 108, 255) fontcolour("black") outlinecolour(39, 6, 142, 255) textcolour(6, 1, 65, 255) trackercolour(255, 40, 53, 255)


form caption("FM_ME") size(840, 340), colour(58, 110, 210), pluginID("Cail")

keyboard bounds(1,281, 839, 58) mouseoeverkeycolour(255, 255, 0, 128)

;-----------------------------------
;- Region: Menu GUI
;----------------------------------
groupbox bounds(0, 0, 140, 280) identchannel("GB_Menu") text("Menu") colour(178, 186, 230, 255) fontcolour:0(0, 0, 0, 255) outlinecolour(9, 16, 91, 255)
{
button bounds(10, 25, 120, 30) channel("But_Call_MainOsc") value(0) text("Oscillator") radiogroup(1) $PROPERTY_BUT_OSCA 
button bounds(10, 60, 120, 30) channel("But_Call_ADSR")  text("Envelope - SubOsc") radiogroup(1) $PROPERTY_BUT_OSCA 
button bounds(10, 95, 120, 30) channel("But_Call_Filters")  text("Filters") radiogroup(1) $PROPERTY_BUT_OSCA 
button bounds(10, 130, 120, 30) channel("But_Call_Effects")  text("Effects") radiogroup(1) $PROPERTY_BUT_OSCA 

filebutton bounds(10, 200, 55, 30) channel("filebutton") value(0) text("Save", "Save") mode("snapshot") $PROPERTY_BUT_OSCA 


combobox bounds(10, 235, 120, 30) channel("PresetCombo") populate("*.snaps")
button bounds(70, 190, 55, 40) channel("But_Call_Panic")  text("PANIC") latched(0) $PROPERTY_BUT_OSCA 
}


;-----------------------------------
;- Region: Main Oscillator GUI
;----------------------------------
groupbox bounds(140, 0, 700, 280) identchannel("GB_MainOsc") text("Main Oscilators") visible(1) colour(178, 186, 230, 255) fontcolour:0(0, 0, 0, 255) outlinecolour(9, 16, 91, 255)
{
;---------------------------------------------------------------------------------------------------------------------------------
;                                                           Graph table for oscillator 1
;---------------------------------------------------------------------------------------------------------------------------------
image bounds(200,42,27,20) file("./images/sine.png")
image bounds(200,65,27,20) file("./images/saw.png")
image bounds(200,88,27,20) file("./images/square.png")
image bounds(200,111,27,20) file("./images/pulse.png")
image bounds(200,134,27,20) file("./images/triangle.png")


;- Region: __Oscillator 1 widgets
label bounds(0, 25, 70, 12) text("Osc1") fontcolour:0(0, 0, 0, 255) 
checkbox bounds(25, 45, 10, 10) channel("ChkBox_Type_Osc1_Sine")    value(1)  radiogroup(1) shape("circle") $PROPERTY_CHKBOX_OSCA ;text("Sine")
checkbox bounds(25, 70, 10, 10) channel("ChkBox_Type_Osc1_Saw")       radiogroup(1) shape("circle") $PROPERTY_CHKBOX_OSCA ;text("Saw") 
checkbox bounds(25, 95, 10, 10) channel("ChkBox_Type_Osc1_Square")  radiogroup(1) shape("circle") $PROPERTY_CHKBOX_OSCA ; text("Square") 
checkbox bounds(25, 118, 10, 10) channel("ChkBox_Type_Osc1_Pulse")    radiogroup(1) shape("circle") $PROPERTY_CHKBOX_OSCA  ; text("Pulse") 
checkbox bounds(25, 140, 10, 10) channel("ChkBox_Type_Osc1_Triangle")     radiogroup(1) shape("circle") $PROPERTY_CHKBOX_OSCA ;text("Triangle") 

;- Region: __Oscillator 2 widgets
label bounds(35, 25, 70, 12) text("Osc2") fontcolour:0(0, 0, 0, 255) 
checkbox bounds(60, 45, 10, 10) channel("ChkBox_Type_Osc2_Sine")   text("Sine")   value(1) radiogroup(2) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(60, 70, 10, 10) channel("ChkBox_Type_Osc2_Saw")   text("Saw")     radiogroup(2) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(60, 95, 10, 10) channel("ChkBox_Type_Osc2_Square")   text("Square") radiogroup(2) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(60, 118, 10, 10) channel("ChkBox_Type_Osc2_Pulse")   text("Pulse")   radiogroup(2) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(60, 140, 10, 10) channel("ChkBox_Type_Osc2_Triangle")   text("Triangle")   radiogroup(2) shape("circle") $PROPERTY_CHKBOX_OSCA

;- Region: __Oscillator 3 widgets
label bounds(70, 25, 70, 12) text("Osc3") fontcolour:0(0, 0, 0, 255) 
checkbox bounds(95, 45, 10, 10) channel("ChkBox_Type_Osc3_Sine")   text("Sine")   value(1) radiogroup(3) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(95, 70, 10, 10) channel("ChkBox_Type_Osc3_Saw")   text("Saw")     radiogroup(3) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(95, 95, 10, 10) channel("ChkBox_Type_Osc3_Square")   text("Square") radiogroup(3) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(95, 118, 10, 10) channel("ChkBox_Type_Osc3_Pulse")   text("Pulse")   radiogroup(3) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(95, 140, 10, 10) channel("ChkBox_Type_Osc3_Triangle")   text("Triangle")   radiogroup(3) shape("circle") $PROPERTY_CHKBOX_OSCA

;- Region: __Oscillator 4 widgets
label bounds(105, 25, 70, 12) text("Osc4") fontcolour:0(0, 0, 0, 255) 
checkbox bounds(130, 45, 10, 10) channel("ChkBox_Type_Osc4_Sine")   text("Sine")   value(1) radiogroup(4) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(130, 70, 10, 10) channel("ChkBox_Type_Osc4_Saw")   text("Saw")     radiogroup(4) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(130, 95, 10, 10) channel("ChkBox_Type_Osc4_Square")   text("Square") radiogroup(4) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(130, 118, 10, 10) channel("ChkBox_Type_Osc4_Pulse")   text("Pulse")   radiogroup(4) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(130, 140, 10, 10) channel("ChkBox_Type_Osc4_Triangle")   text("Triangle")   radiogroup(4) shape("circle") $PROPERTY_CHKBOX_OSCA

;- Region: __Oscillator 5 widgets
label bounds(140, 25, 70, 12) text("Osc5") fontcolour:0(0, 0, 0, 255) 
checkbox bounds(165, 45, 10, 10) channel("ChkBox_Type_Osc5_Sine")   text("Sine")   value(1) radiogroup(5) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(165, 70, 10, 10) channel("ChkBox_Type_Osc5_Saw")   text("Saw")     radiogroup(5) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(165, 95, 10, 10) channel("ChkBox_Type_Osc5_Square")   text("Square") radiogroup(5) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(165, 118, 10, 10) channel("ChkBox_Type_Osc5_Pulse")   text("Pulse")   radiogroup(5) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(165, 140, 10, 10) channel("ChkBox_Type_Osc5_Triangle")   text("Triangle")   radiogroup(5) shape("circle") $PROPERTY_CHKBOX_OSCA


image bounds(10,145,80,60) file("./images/Mode1.png")
checkbox bounds(40, 255, 15, 15) channel("ChkBox_Connect_Osc_1")   value(1)  radiogroup(6) shape("circle") $PROPERTY_CHKBOX_OSCA
image bounds(90,160,45,70) file("./images/Mode2.png")
checkbox bounds(105, 255, 15, 15) channel("ChkBox_Connect_Osc_2")     radiogroup(6) shape("circle") $PROPERTY_CHKBOX_OSCA
image bounds(140,158,28,90) file("./images/Mode3.png")
checkbox bounds(148, 255, 15, 15) channel("ChkBox_Connect_Osc_3")     radiogroup(6) shape("circle") $PROPERTY_CHKBOX_OSCA
image bounds(175,157,50,90) file("./images/Mode4.png")
checkbox bounds(190, 255, 15, 15) channel("ChkBox_Connect_Osc_4")     radiogroup(6) shape("circle") $PROPERTY_CHKBOX_OSCA



label bounds(310, 30, 70, 14) text("Osc2") fontcolour:0(0, 0, 0, 255) 
encoder bounds(265, 40, 90, 90) channel("Enc_FM_Freq_Mod_Osc2") value(0)  text("Freq Mod") max(5) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA 
encoder bounds(345, 40, 90,90) channel("Enc_FM_Amp_Mod_Osc2") value(1) text("Mod factor")   max(25) min(0.1) increment(0.1) valuetextbox(1) $PROPERTY_SLIDER_OSCA 



label bounds(530, 30, 70, 14) text("Osc3") fontcolour:0(0, 0, 0, 255) 
encoder bounds(480,40, 90,90) channel("Enc_FM_Freq_Mod_Osc3") value(0)  text("Freq Mod") max(5) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA ;text("Freq Mod")
encoder bounds(565, 40, 90,90) channel("Enc_FM_Amp_Mod_Osc3") value(1) text("Mod factor")  max(25) min(0.1) increment(0.1) valuetextbox(1) $PROPERTY_SLIDER_OSCA ;text("Mod factor")


label bounds(310, 170, 70, 14) text("Osc4") fontcolour:0(0, 0, 0, 255) 
encoder bounds(265, 180, 90, 90) channel("Enc_FM_Freq_Mod_Osc4") value(0)  text("Freq Mod") max(5) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA 
encoder bounds(345, 180, 90,90) channel("Enc_FM_Amp_Mod_Osc4") value(1) text("Mod factor")   max(25) min(0.1) increment(0.1) valuetextbox(1) $PROPERTY_SLIDER_OSCA 



label bounds(530, 170, 70, 14) text("Osc5") fontcolour:0(0, 0, 0, 255) 
encoder bounds(480,180, 90,90) channel("Enc_FM_Freq_Mod_Osc5") value(0)  text("Freq Mod") max(5) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA ;text("Freq Mod")
encoder bounds(565, 180, 90,90) channel("Enc_FM_Amp_Mod_Osc5") value(1) text("Mod factor")  max(25) min(0.1) increment(0.1) valuetextbox(1) $PROPERTY_SLIDER_OSCA ;text("Mod factor")


}



;-----------------------------------
;- Region: Volume Enveloppe GUI
;----------------------------------
groupbox bounds(140, 0, 700, 280) identchannel("GB_ADSR") text("Envelope") visible(0) colour(178, 186, 230, 255) fontcolour:0(0, 0, 0, 255) outlinecolour(9, 16, 91, 255)
  {
  checkbox bounds(320, 65, 15, 15) channel("ChkBox_ADSR_Osc2")  value(0)   shape("circle") $PROPERTY_CHKBOX_OSCA
   checkbox bounds(352, 65, 15, 15) channel("ChkBox_ADSR_Osc3")  value(0)   shape("circle") $PROPERTY_CHKBOX_OSCA
   checkbox bounds(320, 140, 15, 15) channel("ChkBox_ADSR_Osc4")  value(0)   shape("circle") $PROPERTY_CHKBOX_OSCA
   checkbox bounds(352, 140, 15, 15) channel("ChkBox_ADSR_Osc5")  value(0)   shape("circle") $PROPERTY_CHKBOX_OSCA
 
  label bounds(290, 90, 70, 12) text("Osc2") fontcolour:0(0, 0, 0, 255) 
  encoder bounds(0, 35,  85,80) channel("Enc_ADSR_Attack_Osc2") identchannel("R_Enc_ADSR_Attack") value(0.01) text("Attack")  max(2) min(0.001) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(80, 35,  85,80) channel("Enc_ADSR_Decay_Osc2") identchannel("R_Enc_ADSR_Decay")  value(0.01) text("Decay")  max(2) min(0.001) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(160, 35, 85,80) channel("Enc_ADSR_Sustain_Osc2") identchannel("R_Enc_ADSR_Sustain") value(0.85) text("Sustain")  max(1) min(0.0) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(240, 35,  85,80) channel("Enc_ADSR_Release_Osc2") identchannel("R_Enc_ADSR_Release") value(0.01) text("Release")  max(3) min(0.00) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA

  label bounds(330, 90, 70, 12) text("Osc3") fontcolour:0(0, 0, 0, 255) 
  encoder bounds(360, 35,  85,80) channel("Enc_ADSR_Attack_Osc3") identchannel("R_Enc_ADSR_Attack") value(0.01) text("Attack")  max(2) min(0.001) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(440, 35,  85,80) channel("Enc_ADSR_Decay_Osc3") identchannel("R_Enc_ADSR_Decay")  value(0.01) text("Decay")  max(2) min(0.001) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(520, 35, 85,80) channel("Enc_ADSR_Sustain_Osc3") identchannel("R_Enc_ADSR_Sustain") value(0.85) text("Sustain")  max(1) min(0.0) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(600, 35,  85,80) channel("Enc_ADSR_Release_Osc3") identchannel("R_Enc_ADSR_Release") value(0.01) text("Release")  max(3) min(0.00) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA

   label bounds(290, 160, 70, 12) text("Osc4") fontcolour:0(0, 0, 0, 255) 
  encoder bounds(0, 125,  85,60) channel("Enc_ADSR_Attack_Osc4") identchannel("R_Enc_ADSR_Attack") value(0.01)   max(2) min(0.001) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(80, 125,  85,60) channel("Enc_ADSR_Decay_Osc4") identchannel("R_Enc_ADSR_Decay")  value(0.01)  max(2) min(0.001) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(160, 125, 85,60) channel("Enc_ADSR_Sustain_Osc4") identchannel("R_Enc_ADSR_Sustain") value(0.85)  max(1) min(0.0) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(240, 125,  85,60) channel("Enc_ADSR_Release_Osc4") identchannel("R_Enc_ADSR_Release") value(0.01)   max(3) min(0.00) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA

label bounds(330, 160, 70, 12) text("Osc5") fontcolour:0(0, 0, 0, 255) 

  encoder bounds(360, 125,  85,60) channel("Enc_ADSR_Attack_Osc5") identchannel("R_Enc_ADSR_Attack") value(0.01)   max(2) min(0.001) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(440, 125,  85,60) channel("Enc_ADSR_Decay_Osc5") identchannel("R_Enc_ADSR_Decay")  value(0.01)  max(2) min(0.001) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(520, 125, 85,60) channel("Enc_ADSR_Sustain_Osc5") identchannel("R_Enc_ADSR_Sustain") value(0.85)  max(1) min(0.0) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(600, 125,  85,60) channel("Enc_ADSR_Release_Osc5") identchannel("R_Enc_ADSR_Release") value(0.01)   max(3) min(0.00) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA


  encoder bounds(180, 195,  85,80) channel("Enc_ADSR_Attack_Osc1") identchannel("R_Enc_ADSR_Attack") value(0.01) text("Attack")  max(2) min(0.001) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(260, 195,  85,80) channel("Enc_ADSR_Decay_Osc1") identchannel("R_Enc_ADSR_Decay")  value(0.01) text("Decay")  max(2) min(0.001) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(340, 195, 85,80) channel("Enc_ADSR_Sustain_Osc1") identchannel("R_Enc_ADSR_Sustain") value(0.85) text("Sustain")  max(1) min(0.0) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(420, 195,  85,80) channel("Enc_ADSR_Release_Osc1") identchannel("R_Enc_ADSR_Release") value(0.01) text("Release")  max(3) min(0.00) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA


}




</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL -M0 -m0d --midi-key-cps=4 --midi-velocity-amp=5
</CsOptions>
<CsInstruments>
; Initialize the global variables. 
sr = 44100
ksmps = 32
nchnls = 2
0dbfs = 1



giSine   ftgen 101, 0, 8192, 10, 1                                          ; Sine
giSaw    ftgen 102, 0, 8192, 10, 1, 0.5, 0.3, 0.25, 0.2, 0.167, 0.14, 0.125, .111   ; Sawtooth
giSquare ftgen 103, 0, 8192, 10, 1, 0,   0.3, 0,    0.2, 0,     0.14, 0,     .111   ; Square
giPulse  ftgen 104, 0, 8192, 10, 1, 1,   1,   1,    0.7, 0.5,   0.3,  0.1          ; Pulse
giTriangle	ftgen	105, 0, 8193, 7, 0, 2048, 1, 2048, 0,2048,-1,2048,0			; triangle wave


gi_TableOsc1 init 101



#include "./UDO/Midi_trigger.udo"
;   #include "./UDO/LoadFile2Table.udo"
#include "./UDO/SubOscil.udo"
#include "./UDO/Envelope.udo"
;   #include "./UDO/Morphing.udo"
#include "./UDO/Filters.udo"
#include "./UDO/Flanger.udo"
#include "./UDO/Chorus.udo"
#include "./UDO/FM.udo"




     
;**********************************************
;- Region: INSTR  MANAGUI GUI
;**********************************************

instr ManageGUI
 
  ;init the controller  -  Works with my ALESIS VI49
  kCtrler20 init 0
  kCtrler21 init 0
  kCtrler22 init 0
  ;All controler receive values between 0 and 127, but ALESIS v49 is configured to send values between 0 and 100  => easier operation
  ; The following must be adapted accordingly to your controller messages
  kCtrler20 ctrl7 1,20,0, 127
  kCtrler21 ctrl7 1,21,0, 127
  kCtrler22 ctrl7 1,22,0, 127
  kCtrler23 ctrl7 1,23,0, 127
  kCtrler24 ctrl7 1,24,0, 127
  kCtrler25 ctrl7 1,25,0, 127
  kCtrler26 ctrl7 1,26,0, 127
  kCtrler27 ctrl7 1,27,0, 127
  kCtrler28 ctrl7 1,28,0, 127
  kCtrler29 ctrl7 1,29,0, 127
  kCtrler30 ctrl7 1,30,0, 127
  kCtrler31 ctrl7 1,31,0, 127


  ;**********************************************
  ;- Region: _Menu Button
  ;**********************************************
  ; Manage the menu button and show the groupbox linked to the selected menu button
  if changed:k(chnget:k("But_Call_MainOsc"))==1 ||changed:k(chnget:k("But_Call_ADSR"))==1 ||\
      changed:k(chnget:k("But_Call_Filters"))==1 ||changed:k(chnget:k("But_Call_Effects"))==1 then
      if chnget:k("But_Call_MainOsc")==1 then
          chnset "visible(0)","GB_ADSR"
          chnset "visible(0)","GB_Filters"
          chnset "visible(0)","GB_Effects"
          chnset "visible(1)","GB_MainOSc"
          gkFlag_ActiveGB_OSC = 1
          gkFlag_ActiveGB_ENV = 0
          gkFlag_ActiveGB_FILT = 0
          gkFlag_ActiveGB_EFFECT = 0
      endif
      if chnget:k("But_Call_ADSR")==1 then
          chnset "visible(0)","GB_Filters"
          chnset "visible(0)","GB_Effects"
          chnset "visible(0)","GB_MainOSc"
          chnset "visible(1)","GB_ADSR"
          gkFlag_ActiveGB_OSC = 0
          gkFlag_ActiveGB_ENV = 1
          gkFlag_ActiveGB_FILT = 0
          gkFlag_ActiveGB_EFFECT = 0
      endif
      if chnget:k("But_Call_Filters")==1 then
          chnset "visible(0)","GB_ADSR"
          chnset "visible(0)","GB_Effects"
          chnset "visible(0)","GB_MainOSc"
          chnset "visible(1)","GB_Filters"
          gkFlag_ActiveGB_OSC = 0
          gkFlag_ActiveGB_ENV = 0
          gkFlag_ActiveGB_FILT = 1
          gkFlag_ActiveGB_EFFECT = 0
      endif
      if chnget:k("But_Call_Effects")==1 then
          chnset "visible(0)","GB_ADSR"
          chnset "visible(0)","GB_Filters"
          chnset "visible(0)","GB_MainOSc"
          chnset "visible(1)","GB_Effects"
          gkFlag_ActiveGB_OSC = 0
          gkFlag_ActiveGB_ENV = 0
          gkFlag_ActiveGB_FILT = 0
          gkFlag_ActiveGB_EFFECT = 1
      endif
  endif

  ;**********************************************
  ;- Region: _Panic Button
  ;**********************************************
  if changed:k(chnget:k("But_Call_Panic"))==1 then
      if chnget:k("But_Call_Panic")==1 then
          ; DO THE PANIC PROCEDURE
        kReverb_active active "Reverb",0,1  ; check if instrument reverb is active
        if kReverb_active >0 then           ; if the reverb instr has more than 0 instance 
          chnclear "Reverb_SendL"           ; clear channels
          chnclear "Reverb_SendR"
          turnoff2 "Reverb",0,0
        endif
        kEcho_active active "Echo",0,1                        ; check if instrument reverb is active
        if kEcho_active>0 then 
          chnclear "Echo_SendL"
          chnclear "Echo_SendR"
		      turnoff2 "Echo",0,0
        endif  
        k801_active active 801,0,1     
        if k801_active >0 then
          turnoff2 801,0,0
        endif
      endif
  endif

  ;**********************************************
  ;- Region: _Save Button
  ;**********************************************
  if changed:k(chnget:S("Save_filebutton"))==1 then
      ; DO THE SAVE PROCEDURE
      ; if any
  endif


  ;**********************************************
  ;- Region: _Preset ComboBox
  ;**********************************************
  if changed:k(chnget:k("PresetCombo"))==1 then
      ; DO THE PRESET PROCEDURE
      ; if any
      gkFlag_ActiveGB_OSC = 1
      gkFlag_ActiveGB_ENV = 1
      gkFlag_ActiveGB_FILT = 1
      gkFlag_ActiveGB_EFFECT = 1
      ; Set a Flag which will be set to 0 after all GB have been updated, see  at the end of instr "ManageGB"
      gkPreset_FLag=1
    ;  chnset k(1), "But_Call_MainOsc"
  endif


  ;---------------------------------------
  ;- Region: _5: Real Knobs Ctroller
  ;---------------------------------------
  if changed(kCtrler20)== 1  then
      gk_Freq_Morph = kCtrler20*0.05
      chnset gk_Freq_Morph,"Enc_Freq_Morph"
  endif
  if changed(kCtrler21)== 1 || changed(kCtrler22)== 1 then    ;read and rescale the Ctr 20 (unites)  and 21 (decimales)
      ;messages from controllers are between 0 and 100   (using a config from the alesis vi49)
      gk_FM_Freq_Mod= kCtrler21*.05 +kCtrler22*0.005
      chnset gk_FM_Freq_Mod,"Enc_FM_Freq_Mod"
  endif
      
  if changed(kCtrler23)== 1  then
      gk_FM_Amp_Mod = kCtrler23*0.25
      chnset gk_FM_Amp_Mod,"Enc_FM_Amp_Mod"
  endif
  /* Controller trigger the Filter Cutoff and filter Resonance */ 
  if changed(kCtrler24)== 1  then
       gk_Filter_CutOff =  kCtrler24*12+50
       chnset gk_Filter_CutOff,"Enc_Filter_CutOff"      
  endif
  if changed(kCtrler25)== 1  then
      ; Not implemented yet
       gk_Filter_Reson =kCtrler25*0.01
        chnset gk_Filter_Reson,"Enc_Filter_Reson"
  endif

/* RING MODULATION */   
      if changed(kCtrler26)== 1  then
      ; Not implemented yet
      gk_Ring_Amp=kCtrler26*0.02
      chnset gk_Ring_Amp,"Ring_Amp"
  endif
  if changed(kCtrler27)== 1 || changed(kCtrler28)== 1 then
      gk_Ring_Freq=kCtrler27*15 + kCtrler28
      chnset gk_Ring_Freq,"Ring_Freq"
  endif
  /*if changed(kCtrler28)== 1  then
      ; Not implemented yet
  endif*/
  if changed(kCtrler29)== 1  then
       gk_Ring_Offset=kCtrler29*0.01
      chnset gk_Ring_Offset,"Ring_Offset"
  endif
  if changed(kCtrler30)== 1  then
      ; Not implemented yet
  endif
  if changed(kCtrler31)== 1  then
      gkMainGain =  kCtrler31*0.01
      chnset gkMainGain,"MainGain"
  endif
endin




instr ManageGB
;-Region: _Flags for checking changes

;- Region: -Groupbox Oscillator

if  gkFlag_ActiveGB_OSC == 1 then 
;-Region: __Check Osc1 wave
    if changed:k(chnget:k("ChkBox_Type_Osc1_Sine"))==1 ||changed:k(chnget:k("ChkBox_Type_Osc1_Saw"))==1 ||changed:k(chnget:k("ChkBox_Type_Osc1_Square"))==1 \
        ||changed:k(chnget:k("ChkBox_Type_Osc1_Pulse"))==1 ||changed:k(chnget:k("ChkBox_Type_Osc1_Triangle"))==1   then 

        if chnget:k("ChkBox_Type_Osc1_Sine")==1 then
            gk_Type_Osc1 = 1
            reinit OSC1_TABLE
        elseif chnget:k("ChkBox_Type_Osc1_Saw")==1 then
            gk_Type_Osc1 = 2
            reinit OSC1_TABLE
        elseif  chnget:k("ChkBox_Type_Osc1_Square")==1 then
            gk_Type_Osc1 = 3
            reinit OSC1_TABLE
        elseif  chnget:k("ChkBox_Type_Osc1_Pulse")==1 then
            gk_Type_Osc1 = 4
            reinit OSC1_TABLE
        elseif chnget:k("ChkBox_Type_Osc1_Triangle")==1 then
            gk_Type_Osc1 = 5
            reinit OSC1_TABLE
        endif
        printk2 gk_Type_Osc1
    endif
    
;-Region: __Check Osc2 wave    
    if changed:k(chnget:k("ChkBox_Type_Osc2_Sine"))==1 ||changed:k(chnget:k("ChkBox_Type_Osc2_Saw"))==1 ||changed:k(chnget:k("ChkBox_Type_Osc2_Square"))==1 \
        ||changed:k(chnget:k("ChkBox_Type_Osc2_Pulse"))==1 ||changed:k(chnget:k("ChkBox_Type_Osc2_Triangle"))==1   then 

        if chnget:k("ChkBox_Type_Osc2_Sine")==1 then
            gk_Type_Osc2 = 1
            reinit OSC2_TABLE
        elseif chnget:k("ChkBox_Type_Osc2_Saw")==1 then
            gk_Type_Osc2 = 2
            reinit OSC2_TABLE
        elseif  chnget:k("ChkBox_Type_Osc2_Square")==1 then
            gk_Type_Osc2 = 3
            reinit OSC2_TABLE
        elseif  chnget:k("ChkBox_Type_Osc2_Pulse")==1 then
            gk_Type_Osc2 = 4
            reinit OSC2_TABLE
        elseif chnget:k("ChkBox_Type_Osc2_Triangle")==1 then
            gk_Type_Osc2 = 5
            reinit OSC2_TABLE
        endif
        printk2 gk_Type_Osc2
    endif


;-Region: __Check Osc3 wave
  if changed:k(chnget:k("ChkBox_Type_Osc3_Sine"))==1 ||changed:k(chnget:k("ChkBox_Type_Osc3_Saw"))==1 ||changed:k(chnget:k("ChkBox_Type_Osc3_Square"))==1 \
        ||changed:k(chnget:k("ChkBox_Type_Osc3_Pulse"))==1 ||changed:k(chnget:k("ChkBox_Type_Osc3_Triangle"))==1   then 

        if chnget:k("ChkBox_Type_Osc3_Sine")==1 then
            gk_Type_Osc3 = 1
            reinit Osc3_TABLE
        elseif chnget:k("ChkBox_Type_Osc3_Saw")==1 then
            gk_Type_Osc3 = 2
            reinit Osc3_TABLE
        elseif  chnget:k("ChkBox_Type_Osc3_Square")==1 then
            gk_Type_Osc3 = 3
            reinit Osc3_TABLE
        elseif  chnget:k("ChkBox_Type_Osc3_Pulse")==1 then
            gk_Type_Osc3 = 4
            reinit Osc3_TABLE
        elseif chnget:k("ChkBox_Type_Osc3_Triangle")==1 then
            gk_Type_Osc3 = 5
            reinit Osc3_TABLE
        endif
        printk2 gk_Type_Osc3
    endif

;-Region: __Check Osc4 wave
  if changed:k(chnget:k("ChkBox_Type_Osc4_Sine"))==1 ||changed:k(chnget:k("ChkBox_Type_Osc4_Saw"))==1 ||changed:k(chnget:k("ChkBox_Type_Osc4_Square"))==1 \
        ||changed:k(chnget:k("ChkBox_Type_Osc4_Pulse"))==1 ||changed:k(chnget:k("ChkBox_Type_Osc4_Triangle"))==1   then 

        if chnget:k("ChkBox_Type_Osc4_Sine")==1 then
            gk_Type_Osc4 = 1
            reinit Osc4_TABLE
        elseif chnget:k("ChkBox_Type_Osc4_Saw")==1 then
            gk_Type_Osc4 = 2
            reinit Osc4_TABLE
        elseif  chnget:k("ChkBox_Type_Osc4_Square")==1 then
            gk_Type_Osc4 = 3
            reinit Osc4_TABLE
        elseif  chnget:k("ChkBox_Type_Osc4_Pulse")==1 then
            gk_Type_Osc4 = 4
            reinit Osc4_TABLE
        elseif chnget:k("ChkBox_Type_Osc4_Triangle")==1 then
            gk_Type_Osc4 = 5
            reinit Osc4_TABLE
        endif
        printk2 gk_Type_Osc4
    endif

;-Region: __Check Osc5 wave
  if changed:k(chnget:k("ChkBox_Type_Osc5_Sine"))==1 ||changed:k(chnget:k("ChkBox_Type_Osc5_Saw"))==1 ||changed:k(chnget:k("ChkBox_Type_Osc5_Square"))==1 \
        ||changed:k(chnget:k("ChkBox_Type_Osc5_Pulse"))==1 ||changed:k(chnget:k("ChkBox_Type_Osc5_Triangle"))==1   then 

        if chnget:k("ChkBox_Type_Osc5_Sine")==1 then
            gk_Type_Osc5 = 1
            reinit Osc5_TABLE
        elseif chnget:k("ChkBox_Type_Osc5_Saw")==1 then
            gk_Type_Osc5 = 2
            reinit Osc5_TABLE
        elseif  chnget:k("ChkBox_Type_Osc5_Square")==1 then
            gk_Type_Osc5 = 3
            reinit Osc5_TABLE
        elseif  chnget:k("ChkBox_Type_Osc5_Pulse")==1 then
            gk_Type_Osc5 = 4
            reinit Osc5_TABLE
        elseif chnget:k("ChkBox_Type_Osc5_Triangle")==1 then
            gk_Type_Osc5 = 5
            reinit Osc5_TABLE
        endif
        printk2 gk_Type_Osc5
    endif

;-Region: __Check connection between Osc
    if changed:k(chnget:k( "ChkBox_Connect_Osc_1"))==1 ||changed:k(chnget:k( "ChkBox_Connect_Osc_2"))==1 ||changed:k(chnget:k( "ChkBox_Connect_Osc_3"))==1 ||changed:k(chnget:k( "ChkBox_Connect_Osc_4"))==1 then
        if chnget:k( "ChkBox_Connect_Osc_1")==1 then 
            gk_Connect_Osc_Mode = 1
        elseif chnget:k( "ChkBox_Connect_Osc_2")==1 then 
            gk_Connect_Osc_Mode = 2
        elseif chnget:k( "ChkBox_Connect_Osc_3")==1 then 
            gk_Connect_Osc_Mode = 3
        elseif chnget:k( "ChkBox_Connect_Osc_4")==1 then 
            gk_Connect_Osc_Mode = 4
        endif
         printk2 gk_Connect_Osc_Mode
    endif

    if changed:k(chnget:k("Enc_FM_Freq_Mod_Osc2"))==1 then 
        gk_FM_Freq_Mod_Osc2= chnget:k("Enc_FM_Freq_Mod_Osc2")
    endif

    if changed:k(chnget:k("Enc_FM_Amp_Mod_Osc2"))==1 then 
        gk_FM_Amp_Mod_Osc2= chnget:k("Enc_FM_Amp_Mod_Osc2")
    endif

    if changed:k(chnget:k("Enc_FM_Freq_Mod_Osc3"))==1 then 
        gk_FM_Freq_Mod_Osc3= chnget:k("Enc_FM_Freq_Mod_Osc3")
    endif

    if changed:k(chnget:k("Enc_FM_Amp_Mod_Osc3"))==1 then 
        gk_FM_Amp_Mod_Osc3= chnget:k("Enc_FM_Amp_Mod_Osc3")
    endif

    if changed:k(chnget:k("Enc_FM_Freq_Mod_Osc4"))==1 then 
        gk_FM_Freq_Mod_Osc4= chnget:k("Enc_FM_Freq_Mod_Osc4")
    endif

    if changed:k(chnget:k("Enc_FM_Amp_Mod_Osc4"))==1 then 
        gk_FM_Amp_Mod_Osc4= chnget:k("Enc_FM_Amp_Mod_Osc4")
    endif

    if changed:k(chnget:k("Enc_FM_Freq_Mod_Osc5"))==1 then 
        gk_FM_Freq_Mod_Osc5= chnget:k("Enc_FM_Freq_Mod_Osc5")
    endif

    if changed:k(chnget:k("Enc_FM_Amp_Mod_Osc5"))==1 then 
        gk_FM_Amp_Mod_Osc5= chnget:k("Enc_FM_Amp_Mod_Osc5")
    endif

endif


 ;**********************************************
  ;- Region: ___Enveloppe GB
  ;**********************************************
  if gkFlag_ActiveGB_ENV==1 then
      if  changed:k(chnget:k("Enc_ADSR_Attack_Osc1"))==1 then
          gk_ADSR_Attack_Osc1 = chnget:k("Enc_ADSR_Attack_Osc1")
      endif
      if  changed:k(chnget:k("Enc_ADSR_Decay_Osc1"))==1 then
          gk_ADSR_Decay_Osc1 = chnget:k("Enc_ADSR_Decay_Osc1")
      endif
      if  changed:k(chnget:k("Enc_ADSR_Sustain_Osc1"))==1 then
          gk_ADSR_Sustain_Osc1 = chnget:k("Enc_ADSR_Sustain_Osc1")
      endif
      if  changed:k(chnget:k("Enc_ADSR_Release_Osc1"))==1 then
          gk_ADSR_Release_Osc1 = chnget:k("Enc_ADSR_Release_Osc1")
      endif
      
      if  changed:k(chnget:k("Enc_ADSR_Attack_Osc2"))==1 then
          gk_ADSR_Attack_Osc2 = chnget:k("Enc_ADSR_Attack_Osc2")
      endif
      if  changed:k(chnget:k("Enc_ADSR_Decay_Osc2"))==1 then
          gk_ADSR_Decay_Osc2 = chnget:k("Enc_ADSR_Decay_Osc2")
      endif
      if  changed:k(chnget:k("Enc_ADSR_Sustain_Osc2"))==1 then
          gk_ADSR_Sustain_Osc2 = chnget:k("Enc_ADSR_Sustain_Osc2")
      endif
      if  changed:k(chnget:k("Enc_ADSR_Release_Osc2"))==1 then
          gk_ADSR_Release_Osc2 = chnget:k("Enc_ADSR_Release_Osc2")
      endif
      
      if  changed:k(chnget:k("Enc_ADSR_Attack_Osc3"))==1 then
          gk_ADSR_Attack_Osc3 = chnget:k("Enc_ADSR_Attack_Osc3")
      endif
      if  changed:k(chnget:k("Enc_ADSR_Decay_Osc3"))==1 then
          gk_ADSR_Decay_Osc3 = chnget:k("Enc_ADSR_Decay_Osc3")
      endif
      if  changed:k(chnget:k("Enc_ADSR_Sustain_Osc3"))==1 then
          gk_ADSR_Sustain_Osc3 = chnget:k("Enc_ADSR_Sustain_Osc3")
      endif
      if  changed:k(chnget:k("Enc_ADSR_Release_Osc3"))==1 then
          gk_ADSR_Release_Osc3 = chnget:k("Enc_ADSR_Release_Osc3")
      endif      
      
      if  changed:k(chnget:k("Enc_ADSR_Attack_Osc4"))==1 then
          gk_ADSR_Attack_Osc4 = chnget:k("Enc_ADSR_Attack_Osc4")
      endif
      if  changed:k(chnget:k("Enc_ADSR_Decay_Osc4"))==1 then
          gk_ADSR_Decay_Osc4 = chnget:k("Enc_ADSR_Decay_Osc4")
      endif
      if  changed:k(chnget:k("Enc_ADSR_Sustain_Osc4"))==1 then
          gk_ADSR_Sustain_Osc4 = chnget:k("Enc_ADSR_Sustain_Osc4")
      endif
      if  changed:k(chnget:k("Enc_ADSR_Release_Osc4"))==1 then
          gk_ADSR_Release_Osc4 = chnget:k("Enc_ADSR_Release_Osc4")
      endif

      if  changed:k(chnget:k("Enc_ADSR_Attack_Osc5"))==1 then
          gk_ADSR_Attack_Osc5 = chnget:k("Enc_ADSR_Attack_Osc5")
      endif
      if  changed:k(chnget:k("Enc_ADSR_Decay_Osc5"))==1 then
          gk_ADSR_Decay_Osc5 = chnget:k("Enc_ADSR_Decay_Osc5")
      endif
      if  changed:k(chnget:k("Enc_ADSR_Sustain_Osc5"))==1 then
          gk_ADSR_Sustain_Osc5 = chnget:k("Enc_ADSR_Sustain_Osc5")
      endif
      if  changed:k(chnget:k("Enc_ADSR_Release_Osc5"))==1 then
          gk_ADSR_Release_Osc5 = chnget:k("Enc_ADSR_Release_Osc5")
      endif      
      
  endif




OSC1_TABLE:
    gi_TableOsc1 = 100 + i(gk_Type_Osc1)
rireturn

OSC2_TABLE:
    gi_TableOsc2 = 100 + i(gk_Type_Osc2)
rireturn
Osc3_TABLE:
    gi_TableOsc3 = 100 + i(gk_Type_Osc3)
rireturn
Osc4_TABLE:
    gi_TableOsc4 = 100 + i(gk_Type_Osc4)
rireturn

Osc5_TABLE:
    gi_TableOsc5 = 100 + i(gk_Type_Osc5)
rireturn




endin




;instrument will be triggered by keyboard widget
instr 801


  ktrig init 0
  ktrig=ktrig+1

 kamp  = p5/127
   ; -- pitch bend --
  kPchBnd  pchbend  0,12                ; read in pitch bend (range -6 to 6)

  ; -- aftertouch --
   if gkAfttch!=0 then 
        kAftPitch lfo gkAfttch,8*gkAfttch   ; get the value of gkAfttch  from instr 800
   else
        kAftPitch=0
   endif
  ; MIDI note number + pitch bend are converted to cycles per seconds
  kPitchInit = cpsmidinn(p4+gkPitchBend+kAftPitch)
  
    /* Calculate audio */
  /* Calculate envelope : call UDO */ 
 ; kVolume_Envelope Envelop gk_Envelope_Mode, gk_ADSR_Attack,gk_ADSR_Decay, gk_ADSR_Sustain, gk_ADSR_Release

  /* Calculate FM modulator: call UDO */ 
   kEnv1 madsr .5, .2, .7, .2
  
  if gk_Connect_Osc_Mode == 1 then   
        aFM2 FM kPitchInit, gk_FM_Freq_Mod_Osc2 , gk_FM_Amp_Mod_Osc2, gi_TableOsc2
        aFM3 FM kPitchInit, gk_FM_Freq_Mod_Osc3 , gk_FM_Amp_Mod_Osc3, gi_TableOsc3
        aFM4 FM kPitchInit, gk_FM_Freq_Mod_Osc4 , gk_FM_Amp_Mod_Osc4, gi_TableOsc4
        aFM5 FM kPitchInit, gk_FM_Freq_Mod_Osc5 , gk_FM_Amp_Mod_Osc5, gi_TableOsc5
        aOut1 poscil 1,kPitchInit+aFM2*kEnv1 +aFM3 +aFM4 +aFM5,gi_TableOsc1
  elseif gk_Connect_Osc_Mode == 2 then 
        aFM3 FM kPitchInit, gk_FM_Freq_Mod_Osc3 , gk_FM_Amp_Mod_Osc3, gi_TableOsc3
        aFM5 FM kPitchInit, gk_FM_Freq_Mod_Osc5 , gk_FM_Amp_Mod_Osc5, gi_TableOsc5
        aFM2 Audio_FM kPitchInit+aFM3, gk_FM_Freq_Mod_Osc2 , gk_FM_Amp_Mod_Osc2, gi_TableOsc2
        aFM4 Audio_FM kPitchInit+aFM5, gk_FM_Freq_Mod_Osc4 , gk_FM_Amp_Mod_Osc4, gi_TableOsc4
        aOut1 poscil 1,kPitchInit+aFM2+aFM4,gi_TableOsc1
  elseif gk_Connect_Osc_Mode == 3 then     
       aFM5 FM kPitchInit, gk_FM_Freq_Mod_Osc5 , gk_FM_Amp_Mod_Osc5, gi_TableOsc5
       aFM4 Audio_FM kPitchInit+aFM5, gk_FM_Freq_Mod_Osc4 , gk_FM_Amp_Mod_Osc4, gi_TableOsc4 
       aFM3 Audio_FM kPitchInit+aFM4, gk_FM_Freq_Mod_Osc3 , gk_FM_Amp_Mod_Osc3, gi_TableOsc3
       aFM2 Audio_FM kPitchInit+aFM3, gk_FM_Freq_Mod_Osc2 , gk_FM_Amp_Mod_Osc2, gi_TableOsc2
       aOut1 poscil 1,kPitchInit+aFM2,gi_TableOsc1  
    elseif gk_Connect_Osc_Mode == 4 then 
       aFM5 FM kPitchInit, gk_FM_Freq_Mod_Osc5 , gk_FM_Amp_Mod_Osc5, gi_TableOsc5
       aFM4 Audio_FM kPitchInit+aFM5, gk_FM_Freq_Mod_Osc4 , gk_FM_Amp_Mod_Osc4, gi_TableOsc4 
       aFM3 Audio_FM kPitchInit+aFM4, gk_FM_Freq_Mod_Osc3 , gk_FM_Amp_Mod_Osc3, gi_TableOsc3
       
       aFM2 FM kPitchInit, gk_FM_Freq_Mod_Osc2 , gk_FM_Amp_Mod_Osc2, gi_TableOsc2  
       
       aOut1 poscil 1,kPitchInit+aFM2+aFM3,gi_TableOsc1 
   endif
  
 

  /* Calculate audio with oscil A and B*/ 
 ; aOut1 poscil 1,kPitchInit+aFM,gi_TableOsc1
  
  
  
  kEnv madsr .1, .2, .6, .8
  outs aOut1*kEnv*kamp, aOut1*kEnv*kamp
  
  
  



endin




/* Special thanks to Ian Mc Curdy and all contributors to Csound who have released a lot of their work
 for being used and/or reused by others */ 

instr 	1	;INSTRUMENT THAT SCANS MIDI AND STARTS AND STOPS NOTES
	insno	=	801					;INSTRUMENT NUMBER OF INSTRUMENT TO BE TRIGGERED
	MIDI_trigger_instrument	insno,0				;CALL UDO FOR STARTING AND STOPPING NOTE VIA MIDI
endin




/*
;instrument will be triggered by keyboard widget
instr 1
kEnv madsr .1, .2, .6, .4

 ; Calculate FM modulator: call UDO 
  aFM FM kPitchInit,gk_FM_Freq_Mod,gk_FM_Amp_Mod,iTableOscC


print gi_TableOsc1
aOut poscil p5, p4,gi_TableOsc1
outs aOut*kEnv, aOut*kEnv
endin
*/

</CsInstruments>
<CsScore>
;causes Csound to run for about 7000 years...
f0 z
i "ManageGUI" 0 z
i "ManageGB" 0 z

i 1 0 z
</CsScore>
</CsoundSynthesizer>
