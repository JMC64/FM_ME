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
button bounds(10, 60, 120, 30) channel("But_Call_ADSR")  text("Envelopes") radiogroup(1) $PROPERTY_BUT_OSCA 
button bounds(10, 95, 120, 30) channel("But_Call_LFO")  text("LFOs") radiogroup(1) $PROPERTY_BUT_OSCA
button bounds(10, 130, 120, 30) channel("But_Call_Filters")  text("Filters") radiogroup(1) $PROPERTY_BUT_OSCA 
button bounds(10, 165, 120, 30) channel("But_Call_Effects")  text("Effects") radiogroup(1) $PROPERTY_BUT_OSCA 


filebutton bounds(10, 200, 55, 30) channel("filebutton") value(0) text("Save", "Save") mode("snapshot") $PROPERTY_BUT_OSCA 

combobox bounds(10, 235, 120, 30) channel("PresetCombo") populate("*.snaps")
button bounds(70, 200, 55, 30) channel("But_Call_Panic")  text("PANIC") latched(0) $PROPERTY_BUT_OSCA 
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
  
  image bounds(10,43,333,68)  colour(201, 170, 245, 255) 
  
   image bounds(365,122,325,70)  colour(201, 170, 245, 255) 
  
  checkbox bounds(320, 65, 15, 15) channel("ChkBox_ADSR_Osc2")  value(0)   shape("circle") $PROPERTY_CHKBOX_OSCA
   checkbox bounds(372, 65, 15, 15) channel("ChkBox_ADSR_Osc3")  value(0)   shape("circle") $PROPERTY_CHKBOX_OSCA
   checkbox bounds(320, 140, 15, 15) channel("ChkBox_ADSR_Osc4")  value(0)   shape("circle") $PROPERTY_CHKBOX_OSCA
   checkbox bounds(372, 140, 15, 15) channel("ChkBox_ADSR_Osc5")  value(0)   shape("circle") $PROPERTY_CHKBOX_OSCA
 
  label bounds(290, 90, 70, 12) text("Osc2") fontcolour:0(0, 0, 0, 255) 
  encoder bounds(0, 25,  85,80) channel("Enc_ADSR_Attack_Osc2") identchannel("R_Enc_ADSR_Attack") value(0.01) text("Attack")  max(2) min(0.001) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(80, 25,  85,80) channel("Enc_ADSR_Decay_Osc2") identchannel("R_Enc_ADSR_Decay")  value(0.01) text("Decay")  max(2) min(0.001) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(160, 25, 85,80) channel("Enc_ADSR_Sustain_Osc2") identchannel("R_Enc_ADSR_Sustain") value(0.85) text("Sustain")  max(1) min(0.0) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(240, 25,  85,80) channel("Enc_ADSR_Release_Osc2") identchannel("R_Enc_ADSR_Release") value(0.01) text("Release")  max(3) min(0.00) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA

  label bounds(350, 90, 70, 12) text("Osc3") fontcolour:0(0, 0, 0, 255) 
  encoder bounds(380, 25,  85,80) channel("Enc_ADSR_Attack_Osc3") identchannel("R_Enc_ADSR_Attack") value(0.01) text("Attack")  max(2) min(0.001) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(460, 25,  85,80) channel("Enc_ADSR_Decay_Osc3") identchannel("R_Enc_ADSR_Decay")  value(0.01) text("Decay")  max(2) min(0.001) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(540, 25, 85,80) channel("Enc_ADSR_Sustain_Osc3") identchannel("R_Enc_ADSR_Sustain") value(0.85) text("Sustain")  max(1) min(0.0) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(620, 25,  85,80) channel("Enc_ADSR_Release_Osc3") identchannel("R_Enc_ADSR_Release") value(0.01) text("Release")  max(3) min(0.00) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA

   label bounds(290, 160, 70, 12) text("Osc4") fontcolour:0(0, 0, 0, 255) 
  encoder bounds(0, 125,  85,60) channel("Enc_ADSR_Attack_Osc4") identchannel("R_Enc_ADSR_Attack") value(0.01)   max(2) min(0.001) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(80, 125,  85,60) channel("Enc_ADSR_Decay_Osc4") identchannel("R_Enc_ADSR_Decay")  value(0.01)  max(2) min(0.001) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(160, 125, 85,60) channel("Enc_ADSR_Sustain_Osc4") identchannel("R_Enc_ADSR_Sustain") value(0.85)  max(1) min(0.0) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(240, 125,  85,60) channel("Enc_ADSR_Release_Osc4") identchannel("R_Enc_ADSR_Release") value(0.01)   max(3) min(0.00) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA

label bounds(350, 160, 70, 12) text("Osc5") fontcolour:0(0, 0, 0, 255) 

  encoder bounds(380, 125,  85,60) channel("Enc_ADSR_Attack_Osc5") identchannel("R_Enc_ADSR_Attack") value(0.01)   max(2) min(0.001) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(460, 125,  85,60) channel("Enc_ADSR_Decay_Osc5") identchannel("R_Enc_ADSR_Decay")  value(0.01)  max(2) min(0.001) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(540, 125, 85,60) channel("Enc_ADSR_Sustain_Osc5") identchannel("R_Enc_ADSR_Sustain") value(0.85)  max(1) min(0.0) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(620, 125,  85,60) channel("Enc_ADSR_Release_Osc5") identchannel("R_Enc_ADSR_Release") value(0.01)   max(3) min(0.00) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA

label bounds(110, 230, 90, 15) text("Main Osc1") fontcolour:0(0, 0, 0, 255)
  encoder bounds(180, 195,  85,80) channel("Enc_ADSR_Attack_Osc1") identchannel("R_Enc_ADSR_Attack") value(0.01) text("Attack")  max(2) min(0.001) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(260, 195,  85,80) channel("Enc_ADSR_Decay_Osc1") identchannel("R_Enc_ADSR_Decay")  value(0.01) text("Decay")  max(2) min(0.001) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(340, 195, 85,80) channel("Enc_ADSR_Sustain_Osc1") identchannel("R_Enc_ADSR_Sustain") value(0.85) text("Sustain")  max(1) min(0.0) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(420, 195,  85,80) channel("Enc_ADSR_Release_Osc1") identchannel("R_Enc_ADSR_Release") value(0.01) text("Release")  max(3) min(0.00) increment(0.001) valuetextbox(1) $PROPERTY_SLIDER_OSCA


}

;-----------------------------------
;- Region: LFO GUI
;-----------------------------------
groupbox bounds(140, 0, 700, 280) identchannel("GB_LFO") text("LFOs") visible(0) colour(178, 186, 230, 255) fontcolour:0(0, 0, 0, 255) outlinecolour(9, 16, 91, 255)
{
image bounds(10,42,27,20) file("./images/sine.png")
image bounds(10,65,27,20) file("./images/saw.png")
image bounds(10,88,27,20) file("./images/square.png")
image bounds(10,111,27,20) file("./images/pulse.png")
image bounds(10,134,27,20) file("./images/triangle.png")

;- Region: __Oscillator 1 widgets
label bounds(20, 25, 70, 12) text("Osc1") fontcolour:0(0, 0, 0, 255) 
checkbox bounds(55, 45, 10, 10) channel("ChkBox_LFO_Osc1_Sine")    value(1)  radiogroup(7) shape("circle") $PROPERTY_CHKBOX_OSCA ;text("Sine")
checkbox bounds(55, 69, 10, 10) channel("ChkBox_LFO_Osc1_Saw")       radiogroup(7) shape("circle") $PROPERTY_CHKBOX_OSCA ;text("Saw") 
checkbox bounds(55, 95, 10, 10) channel("ChkBox_LFO_Osc1_Square")  radiogroup(7) shape("circle") $PROPERTY_CHKBOX_OSCA ; text("Square") 
checkbox bounds(55, 117, 10, 10) channel("ChkBox_LFO_Osc1_Pulse")    radiogroup(7) shape("circle") $PROPERTY_CHKBOX_OSCA  ; text("Pulse") 
checkbox bounds(55, 141, 10, 10) channel("ChkBox_LFO_Osc1_Triangle")     radiogroup(7) shape("circle") $PROPERTY_CHKBOX_OSCA ;text("Triangle") 

;- Region: __Oscillator 2 widgets
label bounds(80, 25, 70, 12) text("Osc2") fontcolour:0(0, 0, 0, 255) 
checkbox bounds(110, 45, 10, 10) channel("ChkBox_LFO_Osc2_Sine")   text("Sine")   value(1) radiogroup(8) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(110, 69, 10, 10) channel("ChkBox_LFO_Osc2_Saw")   text("Saw")     radiogroup(8) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(110, 95, 10, 10) channel("ChkBox_LFO_Osc2_Square")   text("Square") radiogroup(8) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(110, 117, 10, 10) channel("ChkBox_LFO_Osc2_Pulse")   text("Pulse")   radiogroup(8) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(110, 141, 10, 10) channel("ChkBox_LFO_Osc2_Triangle")   text("Triangle")   radiogroup(8) shape("circle") $PROPERTY_CHKBOX_OSCA

;- Region: __Oscillator 3 widgets
label bounds(140, 25, 70, 12) text("Osc3") fontcolour:0(0, 0, 0, 255) 
checkbox bounds(165, 45, 10, 10) channel("ChkBox_LFO_Osc3_Sine")   text("Sine")   value(1) radiogroup(9) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(165, 69, 10, 10) channel("ChkBox_LFO_Osc3_Saw")   text("Saw")     radiogroup(9) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(165, 95, 10, 10) channel("ChkBox_LFO_Osc3_Square")   text("Square") radiogroup(9) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(165, 117, 10, 10) channel("ChkBox_LFO_Osc3_Pulse")   text("Pulse")   radiogroup(9) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(165, 141, 10, 10) channel("ChkBox_LFO_Osc3_Triangle")   text("Triangle")   radiogroup(9) shape("circle") $PROPERTY_CHKBOX_OSCA

;- Region: __Oscillator 4 widgets
label bounds(195, 25, 70, 12) text("Osc4") fontcolour:0(0, 0, 0, 255) 
checkbox bounds(220, 45, 10, 10) channel("ChkBox_LFO_Osc4_Sine")   text("Sine")   value(1) radiogroup(10) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(220, 69, 10, 10) channel("ChkBox_LFO_Osc4_Saw")   text("Saw")     radiogroup(10) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(220, 95, 10, 10) channel("ChkBox_LFO_Osc4_Square")   text("Square") radiogroup(10) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(220, 117, 10, 10) channel("ChkBox_LFO_Osc4_Pulse")   text("Pulse")   radiogroup(10) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(220, 141, 10, 10) channel("ChkBox_LFO_Osc4_Triangle")   text("Triangle")   radiogroup(10) shape("circle") $PROPERTY_CHKBOX_OSCA

;- Region: __Oscillator 5 widgets
label bounds(250, 25, 70, 12) text("Osc5") fontcolour:0(0, 0, 0, 255) 
checkbox bounds(275, 45, 10, 10) channel("ChkBox_LFO_Osc5_Sine")   text("Sine")   value(1) radiogroup(11) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(275, 69, 10, 10) channel("ChkBox_LFO_Osc5_Saw")   text("Saw")     radiogroup(11) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(275, 95, 10, 10) channel("ChkBox_LFO_Osc5_Square")   text("Square") radiogroup(11) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(275, 117, 10, 10) channel("ChkBox_LFO_Osc5_Pulse")   text("Pulse")   radiogroup(11) shape("circle") $PROPERTY_CHKBOX_OSCA
checkbox bounds(275, 141, 10, 10) channel("ChkBox_LFO_Osc5_Triangle")   text("Triangle")   radiogroup(11) shape("circle") $PROPERTY_CHKBOX_OSCA

label bounds(10, 180, 70, 14) text("AMP") fontcolour:0(0, 0, 0, 255) align("left")
label bounds(10, 240, 70, 14) text("FREQ") fontcolour:0(0, 0, 0, 255) align("left")
encoder bounds(18, 160, 85, 50) channel("Enc_LFO_Amp_Osc1") value(0) max(1) min(0) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA ; text("Amp") 
encoder bounds(18, 220, 85,50) channel("Enc_LFO_Freq_Osc1") value(1)   max(25) min(0.01) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA ;text("Freq") 

encoder bounds(72, 160, 85, 50) channel("Enc_LFO_Amp_Osc2") value(0) max(1) min(0) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA ; text("Amp") 
encoder bounds(72, 220, 85,50) channel("Enc_LFO_Freq_Osc2") value(1)   max(25) min(0.01) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA ;text("Freq") 

encoder bounds(128, 160, 85, 50) channel("Enc_LFO_Amp_Osc3") value(0) max(1) min(0) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA ; text("Amp") 
encoder bounds(128, 220, 85,50) channel("Enc_LFO_Freq_Osc3") value(1)   max(25) min(0.01) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA ;text("Freq") 

encoder bounds(184, 160, 85, 50) channel("Enc_LFO_Amp_Osc4") value(0) max(1) min(0) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA ; text("Amp") 
encoder bounds(184, 220, 85,50) channel("Enc_LFO_Freq_Osc4") value(1)   max(25) min(0.01) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA ;text("Freq") 

encoder bounds(238, 160, 85, 50) channel("Enc_LFO_Amp_Osc5") value(0) max(1) min(0) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA ; text("Amp") 
encoder bounds(238, 220, 85,50) channel("Enc_LFO_Freq_Osc5") value(1)   max(25) min(0.01) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA ;text("Freq") 

}

;-----------------------------------
;- Region: Filters GUI
;----------------------------------

groupbox bounds(140, 0, 700, 280) identchannel("GB_Filters") text("Filters") visible(0) colour(178, 186, 230, 255) fontcolour:0(0, 0, 0, 255) outlinecolour(9, 16, 91, 255)
  {
  checkbox bounds(20, 3, 70, 13) channel("ChkBox_Filter_On") text("On/Off") shape("circle") $PROPERTY_CHKBOX_OSCA

  ;-----------------------------------
  ;- Region: ___1-Encoders
  rslider bounds(0, 20, 90, 100) channel("Enc_Filter_Mix") range(0,1,0.5,1,0.01) text("Mix") valuetextbox(1) $PROPERTY_SLIDER_OSCA2
  encoder bounds(90, 20, 90, 100) channel("Enc_Filter_CutOff") identchannel("R_Enc_Filter_CutOff") value(500) text("Cut Off")  max(3500) min(20) increment(5) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(180, 20, 90, 100) channel("Enc_Filter_Reson") identchannel("R_Enc_Filter_Reson") value(0.0) text("Resonance")  max(1) min(0.0) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder bounds(270, 20, 90, 100) channel("Enc_Filter_Distor")  identchannel("R_Enc_Filter_Distor") value(0.01) text("Distorsion")  max(1) min(0.00) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA

  ;-----------------------------------
  ;- Region: ___2-CheckBoxes
  checkbox bounds(370, 30, 100, 12) channel("ChkBox_Filter_Moogl")  text("Moogladder")  value(1) radiogroup(4) shape("circle") $PROPERTY_CHKBOX_OSCA
  checkbox bounds(370, 50, 100, 12) channel("ChkBox_Filter_LPF18")   text("LPF18")   radiogroup(4) shape("circle") $PROPERTY_CHKBOX_OSCA
  checkbox bounds(370, 70, 80, 12) channel("ChkBox_Filter_BQRez")   text("BQRez")    radiogroup(4) shape("circle") $PROPERTY_CHKBOX_OSCA
  combobox bounds(370, 90, 90, 14) channel("Combo_Filter_BQRez") identchannel("R_Combo_Filter_BQRez") items("Low-Pass", "High-Pass", "Band-pass", "Band-Reject", "All-Pass")
  checkbox bounds(490, 30, 70, 12) channel("ChkBox_Filter_Tone")      text("Tone")     radiogroup(4) shape("circle") $PROPERTY_CHKBOX_OSCA
  checkbox bounds(490, 50, 70, 12) channel("ChkBox_Filter_aTone")     text("aTone")     radiogroup(4) shape("circle") $PROPERTY_CHKBOX_OSCA
  hslider bounds(550, 30, 140, 15) channel("Slider_Filter_Tonelayer") range(1,10,1,1,1)  valuetextbox(1) $PROPERTY_SLIDER_OSCA2
  hslider bounds(550, 50, 140, 15) channel("Slider_Filter_aTonelayer") range(1,10,1,1,1)  valuetextbox(1) $PROPERTY_SLIDER_OSCA2

  ;-----------------------------------
  ;- Region: ___3-Pitch Follow
  checkbox bounds(5, 145, 100, 12) channel("ChkBox_Filter_PitchFollowOn")   text("Pitch Follow")     shape("circle") $PROPERTY_CHKBOX_OSCA
  encoder  bounds(-5, 165, 90, 70)   channel("Enc_Filter_Follow")      identchannel("R_Enc_Filter_Follow")   value(0)   max(2400) min(-2400) increment(10) valuetextbox(1) $PROPERTY_SLIDER_OSCA

  ;-----------------------------------
  ;- Region: ___4-Cut-Off LFO
  image    bounds(100, 130, 190, 130)  colour(216, 191, 216, 255)
  label    bounds(160, 135, 80, 14) text("Cut-Off LFO") fontcolour(0, 0, 0, 255)
  checkbox bounds(105, 135, 12, 12) channel("ChkBox_Filter_CutOff_LFO_On") value(0)     shape("circle") $PROPERTY_CHKBOX_OSCA
  checkbox bounds(110, 170, 80, 12) channel("ChkBox_Filter_CutOff_Line")   text("Line") value(1)  radiogroup(5) shape("circle") $PROPERTY_CHKBOX_OSCA
  checkbox bounds(110, 190, 80, 12) channel("ChkBox_Filter_CutOff_Sine")   text("Sine")   radiogroup(5) shape("circle") $PROPERTY_CHKBOX_OSCA
  checkbox bounds(110, 210, 80, 12) channel("ChkBox_Filter_CutOff_Seg")   text("Seg")    radiogroup(5) shape("circle") $PROPERTY_CHKBOX_OSCA
  checkbox bounds(110, 230, 80, 12) channel("ChkBox_Filter_CutOff_Exp")   text("Exp")    radiogroup(5) shape("circle") $PROPERTY_CHKBOX_OSCA
  encoder  bounds(150, 150, 90, 90) channel("Enc_Filter_CutOff_Amp") identchannel("R_Enc_Filter_CutOff_Amp") text("Amp")  value(0.01)   max(2) min(0) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder  bounds(210, 150, 90, 90) channel("Enc_Filter_CutOff_Freq") identchannel("R_Enc_Filter_CutOff_Freq") text("Freq")  value(0.01)   max(4) min(0.01) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA

  ;-----------------------------------
  ;- Region: ___5-Resonnance LFO
  image    bounds(300, 130, 190, 130)  colour(216, 191, 216, 255)
  label    bounds(300, 135, 200, 14) text("Resonance LFO") fontcolour(0, 0, 0, 255)
  checkbox bounds(305, 135, 12, 12) channel("ChkBox_Filter_Reson_LFO_On") value(0)    shape("circle") $PROPERTY_CHKBOX_OSCA
  checkbox bounds(310, 170, 80, 12) channel("ChkBox_Filter_Reson_Line")   text("Line")   value(1)   radiogroup(6) shape("circle") $PROPERTY_CHKBOX_OSCA
  checkbox bounds(310, 190, 80, 12) channel("ChkBox_Filter_Reson_Sine")   text("Sine")   radiogroup(6) shape("circle") $PROPERTY_CHKBOX_OSCA
  checkbox bounds(310, 210, 80, 12) channel("ChkBox_Filter_Reson_Seg")   text("Seg")    radiogroup(6) shape("circle") $PROPERTY_CHKBOX_OSCA
  checkbox bounds(310, 230, 80, 12) channel("ChkBox_Filter_Reson_Exp")   text("Exp")    radiogroup(6) shape("circle") $PROPERTY_CHKBOX_OSCA
  encoder  bounds(350, 150, 90, 90) channel("Enc_Filter_Reson_Amp") identchannel("R_Enc_Filter_Reson_Amp") text("Amp")  value(0.01)   max(1) min(0) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder  bounds(410, 150, 90, 90) channel("Enc_Filter_Reson_Freq") identchannel("R_Enc_Filter_Reson_Freq") text("Freq")  value(0.01)   max(4) min(0.01) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA

  ;-----------------------------------
  ;- Region: ___6-Filter ADSR
  image    bounds(500, 130, 190, 130)  colour(216, 191, 216, 255)
  label    bounds(500, 135, 200, 14) text("F. Audio ADSR") fontcolour(0, 0, 0, 255)
  checkbox bounds(505, 135, 50, 14) channel("ChkBox_Filter_Env_On")   text("On")  value(0)  shape("circle") $PROPERTY_CHKBOX_OSCA
  encoder  bounds(480, 160, 85, 80) channel("Enc_Filter_Env_Att") identchannel("R_Enc_Filter_Env_Att") text("Att")  value(0.5)   max(4) min(0.01) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder  bounds(530, 160, 85, 80) channel("Enc_Filter_Env_Dec") identchannel("R_Enc_Filter_Env_Dec") text("Dec")  value(0.5)   max(4) min(0.01) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder  bounds(580, 160, 85, 80) channel("Enc_Filter_Env_Sus") identchannel("R_Enc_Filter_Env_Sus") text("Sus")  value(.9)   max(1) min(0) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  encoder  bounds(630, 160, 85, 80) channel("Enc_Filter_Env_Rel") identchannel("R_Enc_Filter_Env_Rel") text("Rel")  value(0.7)   max(4) min(0.01) increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA

}


;-----------------------------------
;- Region: Effect GUI
;-----------------------------------
groupbox bounds(140, 0, 700, 280) identchannel("GB_Effects") text("Effects") visible(0) colour(178, 186, 230, 255) fontcolour:0(0, 0, 0, 255) outlinecolour(9, 16, 91, 255)
  {

  ;-----------------------------------
  ;- Region: ___1-Reverb
  image    bounds(5, 20, 160, 100)  colour(216, 191, 216, 255)
  label bounds(5, 25, 160, 14) text("Reverb") fontcolour(0, 0, 0, 255)
  checkbox bounds(10, 25, 12, 12) channel("Reverb_On") shape("circle") $PROPERTY_CHKBOX_GENE
  rslider bounds(0, 40, 70, 75) channel("Reverb_Room") range(0,1,0.8,1,0.01)  text("Room")  valuetextbox(1) $PROPERTY_SLIDER_OSCA2
  rslider bounds(50, 40, 70, 75) channel("Reverb_Damp") range(0,1,0.8,1,0.01)  text("Damp")  valuetextbox(1)  $PROPERTY_SLIDER_OSCA2
  rslider bounds(100, 40, 70, 75) channel("Reverb_Mix") range(0,1,0.5,1,0.01) text("Mix")  valuetextbox(1) $PROPERTY_SLIDER_OSCA2

  ;-----------------------------------
  ;- Region: ___2-Echo
  image    bounds(170, 20, 120, 100)  colour(216, 191, 216, 255)
  label bounds(170, 25, 120, 14) text("Echo") fontcolour(0, 0, 0, 255)
  checkbox bounds(175, 25, 12, 12) channel("Echo_On") shape("circle") $PROPERTY_CHKBOX_GENE
  rslider bounds(170, 40, 70, 75) channel("Echo_Delay") min(0.5) max(6) value(1.5) text("Delay") increment(0.1) valuetextbox(1) $PROPERTY_SLIDER_OSCA2
  rslider bounds(220, 40, 70, 75) channel("Echo_Loop") min(0.01) max(6) value(0.1) text("After")  increment(0.01) valuetextbox(1)  $PROPERTY_SLIDER_OSCA2

  ;-----------------------------------
  ;- Region: ___3-Ring modulation
  image    bounds(295, 20, 180, 100)  colour(216, 191, 216, 255)
  label bounds(295, 25, 160, 14) text("Ring Mod") fontcolour(0, 0, 0, 255)
  checkbox bounds(300, 25, 12, 12) channel("Ring_On")  shape("circle") $PROPERTY_CHKBOX_GENE
  rslider bounds(290, 40, 70, 75) channel("Ring_Amp") range(0, 2, 2, 1, 0.01) text("Amp") increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA2
  encoder bounds(340, 40,  100,75)  channel("Ring_Freq") value(385) increment(1) text("Freq")  max(1500) min(0.1) valuetextbox(1) $PROPERTY_SLIDER_OSCA
  rslider bounds(410, 40, 70, 75) channel("Ring_Offset") range(0, 1, 1, 1, 0.01) text("Offset") increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA2

  ;-----------------------------------
  ;- Region: ___4-Flanger
  image    bounds(480, 20, 180, 100)  colour(216, 191, 216, 255)
  label bounds(485, 25, 180, 14) text("Flanger") fontcolour(0, 0, 0, 255)
  checkbox bounds(485, 25, 12, 12) channel("Flanger_On")  shape("circle") $PROPERTY_CHKBOX_GENE
  rslider bounds(480, 40, 70, 75) channel("Flanger_Depth") min(0) max(200) value(20) text("Depth") increment(0.01) valuetextbox(1) $PROPERTY_SLIDER_OSCA2
  rslider bounds(540, 40, 70, 75) channel("Flanger_Freq") min(0.0) max(200) value(20) text("Freq")  increment(0.01) valuetextbox(1)  $PROPERTY_SLIDER_OSCA2
  rslider bounds(600, 40, 70, 75) channel("Flanger_FeedBack") min(0.0) max(1) value(0.5) text("FeedBck")  increment(0.01) valuetextbox(1)  $PROPERTY_SLIDER_OSCA2

  ;-----------------------------------
  ;- Region: ___4-Chorus
  image    bounds(420, 130, 240, 100)  colour(216, 191, 216, 255)
  label bounds(425, 135, 240, 14) text("Chorus") fontcolour(0, 0, 0, 255)
  checkbox bounds(425, 135, 12, 12) channel("Chorus_On")  shape("circle") $PROPERTY_CHKBOX_GENE
  rslider bounds(420, 150, 70, 75) channel("Chorus_Rate") min(0.0) max(1) value(0.2) text("Rate")  increment(0.01) valuetextbox(1)  $PROPERTY_SLIDER_OSCA2
  rslider bounds(480, 150, 70, 75) channel("Chorus_Depth") min(5) max(50) value(14) text("Depth") increment(0.1) valuetextbox(1) $PROPERTY_SLIDER_OSCA2
  rslider bounds(540, 150, 70, 75) channel("Chorus_Offset") min(0.0) max(50) value(20) text("Offset")  increment(1) valuetextbox(1)  $PROPERTY_SLIDER_OSCA2
  rslider bounds(600, 150, 70, 75) channel("Chorus_Mix") min(0.0) max(1) value(0.8) text("Mix")  increment(0.01) valuetextbox(1)  $PROPERTY_SLIDER_OSCA2


  ;-----------------------------------
  ;- Region: ___5-Gain
  image    bounds(5, 130, 90, 100)  colour(216, 191, 216, 255)
  rslider bounds(10, 140, 70, 75) channel("MainGain") min(0.0) max(1) value(0.5) text("Main Gain")  increment(0.01) valuetextbox(1)  $PROPERTY_SLIDER_OSCA2
 
  ;-----------------------------------
  ;- Region: ___6-Host Slave
  image    bounds(100, 130, 90, 100)  colour(216, 191, 216, 255)
  label bounds(100, 135, 90, 14) text("Host") fontcolour(0, 0, 0, 255)
  checkbox bounds(105,150, 60, 12) channel("HostSlave_On") text("Slave") shape("circle") $PROPERTY_CHKBOX_GENE textcolour(0, 0, 0, 255) fontcolour(0, 0, 0, 255)
  numberbox bounds(110, 163, 70, 30) channel("HostBPMValue")  text("BPM")  textcolour(0, 0, 0, 255) min(0) max(360)
  numberbox bounds(110, 195, 70, 30) channel("HostMorphValue")  text("Frq Morph")  textcolour(0, 0, 0, 255) min(0) max(360)
 
  ;-----------------------------------
  ;- Region: ___7-BinAural
  image    bounds(195, 130, 125, 100)  colour(216, 191, 216, 255)
  label bounds(200, 135, 135, 14) text("BinAural") fontcolour(0, 0, 0, 255)
  checkbox bounds(200,135, 12, 12)  channel("ChkBox_Binaural")  shape("circle") $PROPERTY_CHKBOX_GENE textcolour(0, 0, 0, 255) fontcolour(0, 0, 0, 255)
  encoder bounds(180, 145, 100,75) channel("Enc_Azimut") text("Azimut") valuetextbox(1) min(-90) max(180) increnent(1) value(0) $PROPERTY_SLIDER_OSCA
  encoder bounds(230, 145,  100,75) channel("Enc_Elev") text("Elevation") valuetextbox(1) min(-40) max(90) increnent(1) value(0) $PROPERTY_SLIDER_OSCA

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

opcode MYLFO, k,kkk
k_Amp, k_Freq,k_Wavshape xin

 if k_Amp >=0 then 
    if k_Wavshape == 1 then 
        kLFO poscil k_Amp,k_Freq, giSine
    elseif k_Wavshape == 2 then 
        kLFO poscil k_Amp,k_Freq, giSaw
    elseif k_Wavshape == 3 then 
        kLFO poscil k_Amp,k_Freq, giSquare
    elseif k_Wavshape == 4 then 
        kLFO poscil k_Amp,k_Freq, giPulse
    elseif k_Wavshape == 5 then 
        kLFO poscil k_Amp,k_Freq, giTriangle
    endif
        kLFO = (kLFO+1)*0.5
    else 
     kLFO =1
 endif
 
xout kLFO
endop




instr InitData
  ; SPresetPath init "AKWF_sin_0001.wav"
  gSstereoL = "./Data/hrtf-44100-left.dat"
  gSstereoR = "./Data/hrtf-44100-right.dat"
 endin

     
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
      changed:k(chnget:k("But_Call_Filters"))==1 ||changed:k(chnget:k("But_Call_Effects"))==1 || changed:k(chnget:k("But_Call_LFO"))==1 then
      if chnget:k("But_Call_MainOsc")==1 then
          chnset "visible(0)","GB_ADSR"
          chnset "visible(0)","GB_Filters"
          chnset "visible(0)","GB_Effects"
          chnset "visible(0)","GB_LFO"
          chnset "visible(1)","GB_MainOSc"
          
          gkFlag_ActiveGB_OSC = 1
          gkFlag_ActiveGB_ENV = 0
          gkFlag_ActiveGB_FILT = 0 
          gkFlag_ActiveGB_EFFECT = 0
          gkFlag_ActiveGB_LFO = 0
      endif
      if chnget:k("But_Call_ADSR")==1 then
          chnset "visible(0)","GB_Filters"
          chnset "visible(0)","GB_Effects"
          chnset "visible(0)","GB_MainOSc"
          chnset "visible(0)","GB_LFO"
          chnset "visible(1)","GB_ADSR"
          gkFlag_ActiveGB_OSC = 0
          gkFlag_ActiveGB_ENV = 1
          gkFlag_ActiveGB_FILT = 0
          gkFlag_ActiveGB_EFFECT = 0
          gkFlag_ActiveGB_LFO = 0
      endif
      if chnget:k("But_Call_Filters")==1 then
          chnset "visible(0)","GB_ADSR"
          chnset "visible(0)","GB_Effects"
          chnset "visible(0)","GB_MainOSc"
          chnset "visible(0)","GB_LFO"
          chnset "visible(1)","GB_Filters"
          gkFlag_ActiveGB_OSC = 0
          gkFlag_ActiveGB_ENV = 0
          gkFlag_ActiveGB_FILT = 1
          gkFlag_ActiveGB_EFFECT = 0
          gkFlag_ActiveGB_LFO = 0
      endif
      if chnget:k("But_Call_Effects")==1 then
          chnset "visible(0)","GB_ADSR"
          chnset "visible(0)","GB_Filters"
          chnset "visible(0)","GB_MainOSc"
          chnset "visible(0)","GB_LFO"
          chnset "visible(1)","GB_Effects"
          gkFlag_ActiveGB_OSC = 0
          gkFlag_ActiveGB_ENV = 0
          gkFlag_ActiveGB_FILT = 0
          gkFlag_ActiveGB_EFFECT = 1
          gkFlag_ActiveGB_LFO = 0
      endif
      if chnget:k("But_Call_LFO")==1 then
          chnset "visible(0)","GB_ADSR"
          chnset "visible(0)","GB_Filters"
          chnset "visible(0)","GB_MainOSc"
          chnset "visible(0)","GB_Effects"
          chnset "visible(1)","GB_LFO"
          gkFlag_ActiveGB_OSC = 0
          gkFlag_ActiveGB_ENV = 0
          gkFlag_ActiveGB_FILT = 0
          gkFlag_ActiveGB_EFFECT = 0
          gkFlag_ActiveGB_LFO = 1
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
      if changed:k(chnget:k("ChkBox_ADSR_Osc2"))==1 then
         gk_ADSR_Osc2_On = chnget:k("ChkBox_ADSR_Osc2")
      endif
      if changed:k(chnget:k("ChkBox_ADSR_Osc3"))==1 then
         gk_ADSR_Osc3_On = chnget:k("ChkBox_ADSR_Osc3")
      endif
      if changed:k(chnget:k("ChkBox_ADSR_Osc4"))==1 then
         gk_ADSR_Osc4_On = chnget:k("ChkBox_ADSR_Osc4")
      endif
      if changed:k(chnget:k("ChkBox_ADSR_Osc5"))==1 then
         gk_ADSR_Osc5_On = chnget:k("ChkBox_ADSR_Osc5")
      endif
      
      
      
      
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

;**********************************************
  ;- Region: ___LFO GB
  ;**********************************************
    if gkFlag_ActiveGB_LFO ==1 then
    
    
    ; REPEAT this group 4 time for each OSc
    
         if changed:k(chnget:k("ChkBox_LFO_Osc1_Sine"))==1 ||changed:k(chnget:k("ChkBox_LFO_Osc1_Saw"))==1 ||changed:k(chnget:k("ChkBox_LFO_Osc1_Square"))==1 \
         ||changed:k(chnget:k("ChkBox_LFO_Osc1_Pulse"))==1 ||changed:k(chnget:k("ChkBox_LFO_Osc1_Triangle"))==1 then 
            if chnget:k("ChkBox_LFO_Osc1_Sine")==1 then 
                gk_LFO_Osc1_Mode = 1
 
            elseif chnget:k("ChkBox_LFO_Osc1_Saw")==1 then 
                 gk_LFO_Osc1_Mode = 2

            elseif chnget:k("ChkBox_LFO_Osc1_Square")==1 then 
                 gk_LFO_Osc1_Mode = 3

            elseif chnget:k("ChkBox_LFO_Osc1_Pulse")==1 then 
                 gk_LFO_Osc1_Mode = 4

            elseif chnget:k("ChkBox_LFO_Osc1_Triangle")==1 then 
                 gk_LFO_Osc1_Mode = 5

            endif
        endif
        
        
           if changed:k(chnget:k("ChkBox_LFO_Osc2_Sine"))==1 ||changed:k(chnget:k("ChkBox_LFO_Osc2_Saw"))==1 ||changed:k(chnget:k("ChkBox_LFO_Osc2_Square"))==1 \
         ||changed:k(chnget:k("ChkBox_LFO_Osc2_Pulse"))==1 ||changed:k(chnget:k("ChkBox_LFO_Osc2_Triangle"))==1 then 
            if chnget:k("ChkBox_LFO_Osc2_Sine")==1 then 
                gk_LFO_Osc2_Mode = 1

            elseif chnget:k("ChkBox_LFO_Osc2_Saw")==1 then 
                 gk_LFO_Osc2_Mode = 2

            elseif chnget:k("ChkBox_LFO_Osc2_Square")==1 then 
                 gk_LFO_Osc2_Mode = 3

            elseif chnget:k("ChkBox_LFO_Osc2_Pulse")==1 then 
                 gk_LFO_Osc2_Mode = 4

            elseif chnget:k("ChkBox_LFO_Osc2_Triangle")==1 then 
                 gk_LFO_Osc2_Mode = 5

            endif
        endif
        
        
   if changed:k(chnget:k("ChkBox_LFO_Osc3_Sine"))==1 ||changed:k(chnget:k("ChkBox_LFO_Osc3_Saw"))==1 ||changed:k(chnget:k("ChkBox_LFO_Osc3_Square"))==1 \
         ||changed:k(chnget:k("ChkBox_LFO_Osc3_Pulse"))==1 ||changed:k(chnget:k("ChkBox_LFO_Osc3_Triangle"))==1 then 
            if chnget:k("ChkBox_LFO_Osc3_Sine")==1 then 
                gk_LFO_Osc3_Mode = 1

            elseif chnget:k("ChkBox_LFO_Osc3_Saw")==1 then 
                 gk_LFO_Osc3_Mode = 2

            elseif chnget:k("ChkBox_LFO_Osc3_Square")==1 then 
                 gk_LFO_Osc3_Mode = 3

            elseif chnget:k("ChkBox_LFO_Osc3_Pulse")==1 then 
                 gk_LFO_Osc3_Mode = 4

            elseif chnget:k("ChkBox_LFO_Osc3_Triangle")==1 then 
                 gk_LFO_Osc3_Mode = 5

            endif
        endif
        
        
       if changed:k(chnget:k("ChkBox_LFO_Osc4_Sine"))==1 ||changed:k(chnget:k("ChkBox_LFO_Osc4_Saw"))==1 ||changed:k(chnget:k("ChkBox_LFO_Osc4_Square"))==1 \
         ||changed:k(chnget:k("ChkBox_LFO_Osc4_Pulse"))==1 ||changed:k(chnget:k("ChkBox_LFO_Osc4_Triangle"))==1 then 
            if chnget:k("ChkBox_LFO_Osc4_Sine")==1 then 
                gk_LFO_Osc4_Mode = 1

            elseif chnget:k("ChkBox_LFO_Osc4_Saw")==1 then 
                 gk_LFO_Osc4_Mode = 2

            elseif chnget:k("ChkBox_LFO_Osc4_Square")==1 then 
                 gk_LFO_Osc4_Mode = 3

            elseif chnget:k("ChkBox_LFO_Osc4_Pulse")==1 then 
                 gk_LFO_Osc4_Mode = 4

            elseif chnget:k("ChkBox_LFO_Osc4_Triangle")==1 then 
                 gk_LFO_Osc4_Mode = 5

            endif
        endif    
        
        
   if changed:k(chnget:k("ChkBox_LFO_Osc5_Sine"))==1 ||changed:k(chnget:k("ChkBox_LFO_Osc5_Saw"))==1 ||changed:k(chnget:k("ChkBox_LFO_Osc5_Square"))==1 \
         ||changed:k(chnget:k("ChkBox_LFO_Osc5_Pulse"))==1 ||changed:k(chnget:k("ChkBox_LFO_Osc5_Triangle"))==1 then 
            if chnget:k("ChkBox_LFO_Osc5_Sine")==1 then 
                gk_LFO_Osc5_Mode = 1

            elseif chnget:k("ChkBox_LFO_Osc5_Saw")==1 then 
                 gk_LFO_Osc5_Mode = 2

            elseif chnget:k("ChkBox_LFO_Osc5_Square")==1 then 
                 gk_LFO_Osc5_Mode = 3

            elseif chnget:k("ChkBox_LFO_Osc5_Pulse")==1 then 
                 gk_LFO_Osc5_Mode = 4

            elseif chnget:k("ChkBox_LFO_Osc5_Triangle")==1 then 
                 gk_LFO_Osc5_Mode = 5

            endif
        endif
    ; ADD management of the encoder for LFO    
        
    if changed:k(chnget:k("Enc_LFO_Amp_Osc1"))==1 then 
        gk_LFO_Amp_Osc1 =chnget:k("Enc_LFO_Amp_Osc1")
    endif
    if changed:k(chnget:k("Enc_LFO_Freq_Osc1"))==1 then 
         gk_LFO_Freq_Osc1 =chnget:k("Enc_LFO_Freq_Osc1")
    endif    
    if changed:k(chnget:k("Enc_LFO_Amp_Osc2"))==1 then 
        gk_LFO_Amp_Osc2 =chnget:k("Enc_LFO_Amp_Osc2")
    endif
    if changed:k(chnget:k("Enc_LFO_Freq_Osc2"))==1 then 
         gk_LFO_Freq_Osc2 =chnget:k("Enc_LFO_Freq_Osc2")
    endif    
     if changed:k(chnget:k("Enc_LFO_Amp_Osc3"))==1 then 
        gk_LFO_Amp_Osc3 =chnget:k("Enc_LFO_Amp_Osc3")
    endif
    if changed:k(chnget:k("Enc_LFO_Freq_Osc3"))==1 then 
         gk_LFO_Freq_Osc3 =chnget:k("Enc_LFO_Freq_Osc3")
    endif    
     if changed:k(chnget:k("Enc_LFO_Amp_Osc4"))==1 then 
        gk_LFO_Amp_Osc4 =chnget:k("Enc_LFO_Amp_Osc4")
    endif
    if changed:k(chnget:k("Enc_LFO_Freq_Osc4"))==1 then 
         gk_LFO_Freq_Osc4 =chnget:k("Enc_LFO_Freq_Osc4")
    endif    
     if changed:k(chnget:k("Enc_LFO_Amp_Osc5"))==1 then 
        gk_LFO_Amp_Osc5 =chnget:k("Enc_LFO_Amp_Osc5")
    endif
    if changed:k(chnget:k("Enc_LFO_Freq_Osc5"))==1 then 
         gk_LFO_Freq_Osc5 =chnget:k("Enc_LFO_Freq_Osc5")
    endif    
                         
        
        
    endif

 ;**********************************************
  ;- Region: ___Filters GB
  ;**********************************************
  if gkFlag_ActiveGB_FILT ==1 then
      ; printks "kFlag_ActiveGB_FILT \n", 0.1
      ;- Region:  __Check if filter is on
      if changed:k(chnget:k("ChkBox_Filter_On"))==1 then
          if chnget:k("ChkBox_Filter_On")==1 then
              gk_Filter_is_On = 1
          else
              gk_Filter_is_On = 0
              chnset k(0),"ChkBox_Filter_PitchFollowOn"
             chnset k(0), "ChkBox_Filter_CutOff_LFO_On"
             chnset k(0), "ChkBox_Filter_Reson_LFO_On"
             chnset k(0), "ChkBox_Filter_Env_On"                    
          endif
      endif
      ;- Region:  __Check selected filter type
      if changed:k(chnget:k("ChkBox_Filter_Moogl"))==1 || changed:k(chnget:k("ChkBox_Filter_LPF18"))==1  ||changed:k(chnget:k("ChkBox_Filter_BQRez"))==1  \
          ||  changed:k(chnget:k("ChkBox_Filter_Tone"))==1  || changed:k(chnget:k("ChkBox_Filter_aTone"))==1 then
           
          if chnget:k("ChkBox_Filter_Moogl")==1 then
              gk_Filter_Type=0
              chnset "active(0)", "R_Enc_Filter_Distor"
              chnset "active(1)", "R_Enc_Filter_Reson"
              chnset "active(0)", "R_Combo_Filter_BQRez"
              chnset "active(1)", "R_Enc_Filter_CutOff"
          endif
          if chnget:k("ChkBox_Filter_LPF18")==1 then
              gk_Filter_Type=1
              chnset "active(1)", "R_Enc_Filter_Reson"
              chnset "active(1)", "R_Enc_Filter_Distor"
              chnset "active(0)", "R_Combo_Filter_BQRez"
              chnset "active(1)", "R_Enc_Filter_CutOff"
          endif
          if chnget:k("ChkBox_Filter_BQRez")==1 then
              gk_Filter_Type=2
              chnset "active(1)", "R_Enc_Filter_Reson"
              chnset "active(0)", "R_Enc_Filter_Distor"
              chnset "active(1)", "R_Combo_Filter_BQRez"
              chnset "active(1)", "R_Enc_Filter_CutOff"
          endif
          if chnget:k("ChkBox_Filter_Tone")==1 then
              gk_Filter_Type=3
              chnset "active(0)", "R_Enc_Filter_Reson"
              chnset "active(0)", "R_Enc_Filter_Distor"
              chnset "active(0)", "R_Combo_Filter_BQRez"
              chnset "active(1)", "R_Enc_Filter_CutOff"
          endif
          if chnget:k("ChkBox_Filter_aTone")==1 then
              gk_Filter_Type=4
              chnset "active(0)", "R_Enc_Filter_Reson"
              chnset "active(0)", "R_Enc_Filter_Distor"
              chnset "active(0)", "R_Combo_Filter_BQRez"
              chnset "active(1)", "R_Enc_Filter_CutOff"
          endif
      endif

      ;- Region:  __Get values Main Encoders
      if changed:k(chnget:k("Enc_Filter_Mix"))==1 then
          gk_Filter_Mix = chnget:k("Enc_Filter_Mix")
      endif

      if changed:k(chnget:k("Enc_Filter_CutOff"))==1 then
          gk_Filter_CutOff = chnget:k("Enc_Filter_CutOff")
      endif

      if changed:k(chnget:k("Enc_Filter_Reson"))==1 then
          gk_Filter_Reson = chnget:k("Enc_Filter_Reson")
      endif

      if changed:k(chnget:k("Enc_Filter_Distor"))==1 then
          gk_Filter_Distor = chnget:k("Enc_Filter_Distor")
      endif
	
      ;- Region:  __Get values BQrez combo
      if changed:k(chnget:k("Combo_Filter_BQRez"))==1 then
          kFilterCombo = chnget:k("Combo_Filter_BQRez")
          reinit REINIT_BQREZ
          REINIT_BQREZ:
              gi_BQrez_Type = i(kFilterCombo)-1
          rireturn
      endif
      ;- Region:  __Get values Tone/atone sliders
      if changed:k(chnget:k("Slider_Filter_Tonelayer"))==1 then
          kLayer = chnget:k("Slider_Filter_Tonelayer")
          reinit TONE_LAYER
          TONE_LAYER:
              gi_ToneLayer = i(kLayer)
          rireturn
      endif
      if changed:k(chnget:k("Slider_Filter_aTonelayer"))==1 then
          kLayer = chnget:k("Slider_Filter_aTonelayer")
          reinit ATONE_LAYER
          ATONE_LAYER:
              gi_AToneLayer = i(kLayer)
          rireturn
      endif

      ;- Region:  __Get values Filter Pitch Follow
      if changed:k(chnget:k("ChkBox_Filter_PitchFollowOn"))==1 then
          if chnget:k("ChkBox_Filter_PitchFollowOn")== 1 then
              gk_Filter_PitchFollow=1
          else
              gk_Filter_PitchFollow=0
          endif
      endif
      if gk_Filter_PitchFollow==1  && changed:k(chnget:k("Enc_Filter_Follow"))==1 then
          gk_Filter_PitchFollow_Value = chnget:k("Enc_Filter_Follow")
      endif

      ;- Region:  __Get values LFO Cut Off for filters
      if changed:k(chnget:k("ChkBox_Filter_CutOff_LFO_On"))==1 then
          if chnget:k("ChkBox_Filter_CutOff_LFO_On")==1 then
              gk_Filter_CutOff_LFO_is_On = 1
          else
              gk_Filter_CutOff_LFO_is_On = 0
          endif
      endif
	
      if gk_Filter_CutOff_LFO_is_On ==1 then
          if changed:k(chnget:k("Enc_Filter_CutOff_Amp"))==1 then
              gk_Filter_CutOff_Amp = chnget:k("Enc_Filter_CutOff_Amp")
          endif
          if changed:k(chnget:k("Enc_Filter_CutOff_Freq"))==1 then
              gk_Filter_CutOff_Freq = chnget:k("Enc_Filter_CutOff_Freq")
          endif
          if changed:k(chnget:k("ChkBox_Filter_CutOff_Line"))==1  || changed:k(chnget:k("ChkBox_Filter_CutOff_Sine"))==1 || \
              changed:k(chnget:k("ChkBox_Filter_CutOff_Seg"))==1 || changed:k(chnget:k("ChkBox_Filter_CutOff_Exp"))==1 then
              if chnget:k("ChkBox_Filter_CutOff_Line")==1 then
                  gk_Filter_CutOff_LFO_Mode = 0
              endif
              if chnget:k("ChkBox_Filter_CutOff_Sine")==1 then
                  gk_Filter_CutOff_LFO_Mode = 1
              endif
              if chnget:k("ChkBox_Filter_CutOff_Seg")==1  then
                  gk_Filter_CutOff_LFO_Mode = 2
              endif
              if chnget:k("ChkBox_Filter_CutOff_Exp")==1  then
                  gk_Filter_CutOff_LFO_Mode = 3
              endif
          endif
      endif
	
	
      ;- Region:  __Get values LFO Resonance
      if changed:k(chnget:k("ChkBox_Filter_Reson_LFO_On"))==1 then
          if chnget:k("ChkBox_Filter_Reson_LFO_On")==1 then
              gk_Filter_Reson_LFO_is_On = 1
          else
              gk_Filter_Reson_LFO_is_On = 0
          endif
      endif
      if gk_Filter_Reson_LFO_is_On ==1 then
          if changed:k(chnget:k("Enc_Filter_Reson_Amp"))==1 then
              gk_Filter_Reson_Amp = chnget:k("Enc_Filter_Reson_Amp")
          endif
          if changed:k(chnget:k("Enc_Filter_Reson_Freq"))==1 then
              gk_Filter_Reson_Freq = chnget:k("Enc_Filter_Reson_Freq")
          endif
          if changed:k(chnget:k("ChkBox_Filter_Reson_Line"))==1  || changed:k(chnget:k("ChkBox_Filter_Reson_Sine"))==1 || \
              changed:k(chnget:k("ChkBox_Filter_Reson_Seg"))==1 || changed:k(chnget:k("ChkBox_Filter_Reson_Exp"))==1 then
              if chnget:k("ChkBox_Filter_Reson_Line")==1     then
                  gk_Filter_Reson_LFO_Mode = 0
              endif
              if chnget:k("ChkBox_Filter_Reson_Sine")==1 then
                  gk_Filter_Reson_LFO_Mode = 1
              endif
              if chnget:k("ChkBox_Filter_Reson_Seg")==1  then
                  gk_Filter_Reson_LFO_Mode = 2
              endif
              if chnget:k("ChkBox_Filter_Reson_Exp")==1  then
                  gk_Filter_Reson_LFO_Mode = 3
              endif
          endif
      endif

	  
	  
      ;- Region:  __Get values Filter Audio ADSR
      if changed:k(chnget:k("ChkBox_Filter_Env_On"))==1 then
          if chnget:k("ChkBox_Filter_Env_On")==1 then
              gk_Filter_Env_is_On=1
          else
              gk_Filter_Env_is_On=0
          endif
      endif
      if gk_Filter_Env_is_On==1 then
          if changed:k(chnget:k("Enc_Filter_Env_Att"))==1 then
              gk_Filter_Env_Att =  chnget:k("Enc_Filter_Env_Att")
          endif
          if changed:k(chnget:k("Enc_Filter_Env_Dec"))==1 then
              gk_Filter_Env_Dec =  chnget:k("Enc_Filter_Env_Dec")
          endif
          if changed:k(chnget:k("Enc_Filter_Env_Sus"))==1 then
              gk_Filter_Env_Sus =  chnget:k("Enc_Filter_Env_Sus")
          endif
          if changed:k(chnget:k("Enc_Filter_Env_Rel"))==1 then
              gk_Filter_Env_Rel =  chnget:k("Enc_Filter_Env_Rel")
          endif
      endif
	
  endif


  ;**********************************************
  ;- Region: ___Effects GB
  ;**********************************************
  if gkFlag_ActiveGB_EFFECT==1 then
 
      ;- Region: Effect management
      ;- Region: ____1-Reverb

      if (chnget:k("Reverb_On"))==1 then    ; if the checkbox is on 
        gk_Reverb_On =1                     ; set the global flag to the audio instrument
        kReverb_active active "Reverb",0,1  ; check if instrument reverb is active
        if kReverb_active==0 then           ; if the reverb instr is not 
          event "i","Reverb",0,-3600        ;  turn it on 
        endif
        if changed:k(chnget:k("Reverb_Room"))==1 then   ; check for changed values
          gk_Reverb_Room=chnget:k("Reverb_Room")
        endif
        if changed:k(chnget:k("Reverb_Damp"))==1 then
          gk_Reverb_Damp =chnget:k("Reverb_Damp")
        endif
        if changed:k(chnget:k("Reverb_Mix"))==1 then
          gk_Reverb_Mix =chnget:k("Reverb_Mix")
        endif
      else                                  ; checkbox is off
        gk_Reverb_On =0                     ; set the global flag to the audio instrument
        kReverb_active active "Reverb",0,1  ; check if instrument reverb is active
        if kReverb_active >0 then           ; if the reverb instr has more than 0 instance 
          chnclear "Reverb_SendL"           ; clear channels
          chnclear "Reverb_SendR"
          turnoff2 "Reverb",0,0              ;  turn instr rever off
        endif
      endif

      ;- Region: ____2-Echo
      if chnget:k("Echo_On")==1 then                         ; if the checkbox is on 
        gk_Echo_On =1                                         ; set the global flag to the audio instrument
        kEcho_active active "Echo",0,1                        ; check if instrument reverb is active
        if kEcho_active ==0 then                              ; if the echo instr is not 
          event "i","Echo",0,-3600                            ;  turn it on 
        endif
        if changed:k(chnget:k("Echo_Delay"))==1 then          ; check for changed values
          gk_Echo_rvt = chnget:k("Echo_Delay")
        endif
        if changed:k(chnget:k("Echo_Loop"))==1 then
          gk_Echo_loop = chnget:k("Echo_Loop")
        endif
      else
        gk_Echo_On =0
        kEcho_active active "Echo",0,1                        ; check if instrument reverb is active
        if kEcho_active>0 then 
          chnclear "Echo_SendL"
          chnclear "Echo_SendR"
          turnoff2 "Echo",0,0              ;  turn instr rever off
        endif

      endif

      ;- Region: ____3-Ring Modulation
      if changed:k(chnget:k("Ring_On"))==1 then
          if chnget:k("Ring_On")==1 then
              gk_Ring_On=1
          else
              gk_Ring_On=0
          endif
      endif
      if changed:k(chnget:k("Ring_Amp"))==1 then
          gk_Ring_Amp=chnget:k("Ring_Amp")
      endif
      if changed:k(chnget:k("Ring_Freq"))==1 then
          gk_Ring_Freq= chnget:k("Ring_Freq")
      endif
      if changed:k(chnget:k("Ring_Offset"))==1 then
          gk_Ring_Offset=chnget:k("Ring_Offset")
      endif
      
      ;- Region: ____4-Flanger
      if changed:k(chnget:k("Flanger_On"))==1 then
          if chnget:k("Flanger_On")==1 then
              gk_Flanger_On=1
          else
              gk_Flanger_On=0
          endif
      endif
      if changed:k(chnget:k("Flanger_Depth"))==1 then
          gk_Flanger_Depth= chnget:k("Flanger_Depth")
      endif
      if changed:k(chnget:k("Flanger_Freq"))==1 then
          gk_Flanger_Freq = chnget:k("Flanger_Freq")
      endif
      if changed:k(chnget:k("Flanger_FeedBack"))==1 then
          gk_Flanger_FeedBack = chnget:k("Flanger_FeedBack")
      endif

      ;- Region: ____5-Chorus
      if changed:k(chnget:k("Chorus_On"))==1 then
          if chnget:k("Chorus_On")==1 then
              gk_Chorus_On=1
          else
              gk_Chorus_On=0
          endif
      endif
      if gk_Chorus_On==1 then
          if changed:k(chnget:k("Chorus_Depth"))==1 then
              gk_Chorus_Depth= chnget:k("Chorus_Depth")
             ; gk_Chorus_Min = gk_Chorus_Min/1000
          endif
          if changed:k(chnget:k("Chorus_Rate"))==1 then
              gk_Chorus_Rate= chnget:k("Chorus_Rate")
          endif
          if changed:k(chnget:k("Chorus_Offset"))==1 then
              gk_Chorus_Offset = chnget:k("Chorus_Offset")
            ;  gk_Chorus_Max= gk_Chorus_Max/1000
          endif
          if changed:k(chnget:k("Chorus_Mix"))==1 then
              gk_Chorus_Mix = chnget:k("Chorus_Mix")
          endif
      endif
  
      ;- Region: ____6-Main Gain
      if changed:k(chnget:k("MainGain"))==1 then
          gk_MainGain = chnget:k("MainGain")
      endif
 
      ;- Region: ____7-Host Enslave
      if chnget:k("HostSlave_On")==1 then
          if chnget:k("IS_A_PLUGIN")==1 then
              gk_TempoFactor= chnget:k("HOST_BPM")
              chnset gk_TempoFactor,"HostBPMValue"
              chnset gk_Freq_Morph,"HostMorphValue"
          else
              gk_TempoFactor = 1
              chnset gk_TempoFactor,"HostBPMValue"
              chnset gk_Freq_Morph,"HostMorphValue"
          endif
      else
          gkTempoFactor = 1
          chnset gk_TempoFactor,"HostBPMValue"
          chnset gk_Freq_Morph,"HostMorphValue"
      endif
      
      ;- Region: ____8-BinAural
      if changed:k(chnget:k("ChkBox_Binaural"))==1 then
          gk_Stereo chnget ("ChkBox_Binaural")
          printks "gkstero : %d \n",0,gk_Stereo
      endif
      if changed:k(chnget:k("Enc_Azimut"))==1 then
          kToto = chnget:k("Enc_Azimut")
          gk_az =kToto
          reinit AZIMUT
      endif

      if changed:k(chnget:k("Enc_Elev"))==1 then
          kToto1 = chnget:k("Enc_Elev")
          gk_el = kToto1
          reinit ELEVATION
      endif
  endif



  ;VERY IMPORTANT
  ; This is necessary to bring back the loop to reading only one GB after a preset has been loaded and all variables have been updated.
  if 	gkPreset_FLag==1 then
      gkPreset_FLag=0
      gkFlag_ActiveGB_FILT=0
      gkFlag_ActiveGB_ENV=0
      gkFlag_ActiveGB_EFFECT=0
      gkFlag_ActiveGB_OSC=1
      chnset k(1), "But_Call_MainOsc" 
      chnset "visible(0)","GB_ADSR"
      chnset "visible(0)","GB_Effects"
      chnset "visible(1)","GB_MainOSc"
      chnset "visible(0)","GB_Filters"
  endif


  AZIMUT:
      gi_Az = i(kToto)
  rireturn

  ELEVATION:
      gi_Elev = i(kToto1)
  rireturn



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







instr Echo
  aInL chnget "Echo_SendL"
  aInR chnget "Echo_SendR"
  if  gk_Echo_On==1 then
      aOutL vcomb aInL, gk_Echo_rvt, gk_Echo_loop, 6
      aOutR vcomb aInR, gk_Echo_rvt, gk_Echo_loop, 6
  
      if gk_Reverb_On==1 then
          chnmix aOutL*gk_Reverb_Mix,"Reverb_SendL"
          chnmix aOutR*gk_Reverb_Mix,"Reverb_SendR"
      endif
  endif
  outs aOutL,aOutR
  
  /*  chnmix aOutL,"LeftSignal"
    chnmix aOutR,"RightSignal"*/
  
  chnclear "Echo_SendL"
  chnclear "Echo_SendR"
endin
 
 

instr  Reverb    ; Reverb
  aInL chnget "Reverb_SendL"
  aInR chnget "Reverb_SendR"
  ; create reverberated version of input signal (note stereo input and output)
  aRvbL,aRvbR  freeverb aInL,  aInR, gk_Reverb_Room, gk_Reverb_Damp
  
  outs      aRvbL, aRvbR ; send audio to outputs
  /*   chnmix aRvbL,"LeftSignal"
    chnmix aRvbR,"RightSignal"*/
  
  chnclear  "Reverb_SendL"
  chnclear  "Reverb_SendR"
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
   kEnv1  madsr i(gk_ADSR_Attack_Osc1),i( gk_ADSR_Decay_Osc1),i( gk_ADSR_Sustain_Osc1),i( gk_ADSR_Release_Osc1)
   if gk_ADSR_Osc2_On==1 then 
        kEnv2 madsr i(gk_ADSR_Attack_Osc2),i( gk_ADSR_Decay_Osc2),i( gk_ADSR_Sustain_Osc2),i( gk_ADSR_Release_Osc2)
   else
        kEnv2 =1
   endif
   
   ; apply LFO on modulator
   k_LFO2 MYLFO gk_LFO_Amp_Osc2,gk_LFO_Freq_Osc2,gk_LFO_Osc2_Mode
   kEnv2 = kEnv2 * k_LFO2
   
   if gk_ADSR_Osc3_On==1 then 
        kEnv3 madsr i(gk_ADSR_Attack_Osc3),i( gk_ADSR_Decay_Osc3),i( gk_ADSR_Sustain_Osc3),i( gk_ADSR_Release_Osc3)
   else
        kEnv3 =1
   endif 
   k_LFO3 MYLFO gk_LFO_Amp_Osc3,gk_LFO_Freq_Osc3,gk_LFO_Osc3_Mode
   kEnv3 = kEnv3 * k_LFO3
   
   if gk_ADSR_Osc4_On==1 then 
        kEnv4 madsr i(gk_ADSR_Attack_Osc4),i( gk_ADSR_Decay_Osc4),i( gk_ADSR_Sustain_Osc4),i( gk_ADSR_Release_Osc4)
   else
        kEnv4 =1
   endif 
    k_LFO4 MYLFO gk_LFO_Amp_Osc4,gk_LFO_Freq_Osc4,gk_LFO_Osc4_Mode
   kEnv4 = kEnv4 * k_LFO4
    if gk_ADSR_Osc5_On==1 then 
        kEnv5 madsr i(gk_ADSR_Attack_Osc5),i( gk_ADSR_Decay_Osc5),i( gk_ADSR_Sustain_Osc5),i( gk_ADSR_Release_Osc5)
   else
        kEnv5 =1
   endif 
   k_LFO5 MYLFO gk_LFO_Amp_Osc5,gk_LFO_Freq_Osc5,gk_LFO_Osc5_Mode
   kEnv5 = kEnv5 * k_LFO5
   
  if gk_Connect_Osc_Mode == 1 then   
        aFM2 FM kPitchInit, gk_FM_Freq_Mod_Osc2 , gk_FM_Amp_Mod_Osc2, gi_TableOsc2
        aFM3 FM kPitchInit, gk_FM_Freq_Mod_Osc3 , gk_FM_Amp_Mod_Osc3, gi_TableOsc3
        aFM4 FM kPitchInit, gk_FM_Freq_Mod_Osc4 , gk_FM_Amp_Mod_Osc4, gi_TableOsc4
        aFM5 FM kPitchInit, gk_FM_Freq_Mod_Osc5 , gk_FM_Amp_Mod_Osc5, gi_TableOsc5
        aOut1 poscil 1,kPitchInit+aFM2*kEnv2 +aFM3*kEnv3 +aFM4*kEnv4 +aFM5*kEnv5,gi_TableOsc1
  elseif gk_Connect_Osc_Mode == 2 then 
        aFM3 FM kPitchInit, gk_FM_Freq_Mod_Osc3 , gk_FM_Amp_Mod_Osc3, gi_TableOsc3
        aFM5 FM kPitchInit, gk_FM_Freq_Mod_Osc5 , gk_FM_Amp_Mod_Osc5, gi_TableOsc5
        aFM2 Audio_FM kPitchInit+aFM3*kEnv3, gk_FM_Freq_Mod_Osc2 , gk_FM_Amp_Mod_Osc2, gi_TableOsc2
        aFM4 Audio_FM kPitchInit+aFM5*kEnv5, gk_FM_Freq_Mod_Osc4 , gk_FM_Amp_Mod_Osc4, gi_TableOsc4
        aOut1 poscil 1,kPitchInit+aFM2*kEnv2+aFM4*kEnv4,gi_TableOsc1
  elseif gk_Connect_Osc_Mode == 3 then     
       aFM5 FM kPitchInit, gk_FM_Freq_Mod_Osc5 , gk_FM_Amp_Mod_Osc5, gi_TableOsc5
       aFM4 Audio_FM kPitchInit+aFM5*kEnv5, gk_FM_Freq_Mod_Osc4 , gk_FM_Amp_Mod_Osc4, gi_TableOsc4 
       aFM3 Audio_FM kPitchInit+aFM4*kEnv4, gk_FM_Freq_Mod_Osc3 , gk_FM_Amp_Mod_Osc3, gi_TableOsc3
       aFM2 Audio_FM kPitchInit+aFM3*kEnv3, gk_FM_Freq_Mod_Osc2 , gk_FM_Amp_Mod_Osc2, gi_TableOsc2
       aOut1 poscil 1,kPitchInit+aFM2*kEnv2,gi_TableOsc1  
    elseif gk_Connect_Osc_Mode == 4 then 
       aFM5 FM kPitchInit, gk_FM_Freq_Mod_Osc5 , gk_FM_Amp_Mod_Osc5, gi_TableOsc5
       aFM4 Audio_FM kPitchInit+aFM5*kEnv5, gk_FM_Freq_Mod_Osc4 , gk_FM_Amp_Mod_Osc4, gi_TableOsc4 
       aFM3 Audio_FM kPitchInit+aFM4*kEnv4, gk_FM_Freq_Mod_Osc3 , gk_FM_Amp_Mod_Osc3, gi_TableOsc3
       
       aFM2 FM kPitchInit, gk_FM_Freq_Mod_Osc2 , gk_FM_Amp_Mod_Osc2, gi_TableOsc2  
       
       aOut1 poscil 1,kPitchInit+aFM2*kEnv2+aFM3*kEnv3,gi_TableOsc1 
   endif
   
   
  aOut =aOut1
 

  /* Calculate audio with oscil A and B*/ 
 ; aOut1 poscil 1,kPitchInit+aFM,gi_TableOsc1
  
  
  

;  outs aOut1*kEnv1*kamp, aOut1*kEnv1*kamp
  
    ;------------------------------------
  ;- Region: _Apply Ring Modulation
  if gk_Ring_On == 1 then
    aRing poscil gk_Ring_Amp, cent(gk_Ring_Freq) * kPitchInit, giSine
    aOut =aOut*(aRing + gk_Ring_Offset)
  endif


  ;---------------------------------------
  ;- Region: _Filter and apply envelopes
  if gk_Filter_is_On==1 then
      if gk_Filter_Type ==0 then
          aFilt My_Moogladder aOut, gk_Filter_CutOff, gk_Filter_Reson, gk_Filter_PitchFollow,gk_Filter_PitchFollow_Value, kPitchInit , \
          gk_Filter_CutOff_LFO_is_On , gk_Filter_CutOff_LFO_Mode ,gk_Filter_CutOff_Amp, gk_Filter_CutOff_Freq ,\
          gk_Filter_Reson_LFO_is_On , gk_Filter_Reson_LFO_Mode ,gk_Filter_Reson_Amp, gk_Filter_Reson_Freq
      endif
      if gk_Filter_Type ==1 then
          aFilt My_LPF18 aOut, gk_Filter_CutOff, gk_Filter_Reson, gk_Filter_PitchFollow,gk_Filter_PitchFollow_Value, kPitchInit , \
          gk_Filter_CutOff_LFO_is_On , gk_Filter_CutOff_LFO_Mode ,gk_Filter_CutOff_Amp, gk_Filter_CutOff_Freq ,\
          gk_Filter_Reson_LFO_is_On , gk_Filter_Reson_LFO_Mode ,gk_Filter_Reson_Amp, gk_Filter_Reson_Freq, gk_Filter_Distor
      endif
      if gk_Filter_Type ==2 then
          aFilt My_BQRez aOut, gk_Filter_CutOff, gk_Filter_Reson, gk_Filter_PitchFollow,gk_Filter_PitchFollow_Value, kPitchInit , \
          gk_Filter_CutOff_LFO_is_On , gk_Filter_CutOff_LFO_Mode ,gk_Filter_CutOff_Amp, gk_Filter_CutOff_Freq ,\
          gk_Filter_Reson_LFO_is_On , gk_Filter_Reson_LFO_Mode ,gk_Filter_Reson_Amp, gk_Filter_Reson_Freq ,gi_BQrez_Type
      endif
      if gk_Filter_Type ==3 then
          aFilt My_Tonex aOut, gk_Filter_CutOff, gk_Filter_PitchFollow,gk_Filter_PitchFollow_Value, kPitchInit , \
          gk_Filter_CutOff_LFO_is_On , gk_Filter_CutOff_LFO_Mode ,gk_Filter_CutOff_Amp, gk_Filter_CutOff_Freq ,gi_ToneLayer
      endif
      if gk_Filter_Type ==4 then
          aFilt My_aTonex aOut, gk_Filter_CutOff, gk_Filter_PitchFollow,gk_Filter_PitchFollow_Value, kPitchInit , \
          gk_Filter_CutOff_LFO_is_On , gk_Filter_CutOff_LFO_Mode ,gk_Filter_CutOff_Amp, gk_Filter_CutOff_Freq ,gi_AToneLayer
      endif
      ; If filtered signal has its own envelope, apply it
      if gk_Filter_Env_is_On ==1 then
          kFiltADSR madsr i(gk_Filter_Env_Att),i(gk_Filter_Env_Dec),i(gk_Filter_Env_Sus),i(gk_Filter_Env_Rel)
          aOut = (1-gk_Filter_Mix)*aOut*kEnv1 +  aFilt * gk_Filter_Mix*kFiltADSR
      else
          ;if not, then apply the Volume envelope
          aOut = ((1-gk_Filter_Mix)*aOut + aFilt * gk_Filter_Mix)*kEnv1
      endif
  else
      aOut = aOut *kEnv1
  endif


  ;-----------------------------------------
  ;- Region: _Apply Main Gain
  aOut =gk_MainGain *aOut *kamp
 
  ;-----------------------------------------
  ;- Region: _Apply Flanger
  if gk_Flanger_On==1 then
      aOut Flanger  aOut, gk_Flanger_Depth,gk_Flanger_Freq,gk_Flanger_FeedBack
  endif


  ;-----------------------------------------
  ;- Region: _Apply Chorus
  if gk_Chorus_On==1 then
    aOut MyChorus  aOut,  gk_Chorus_On,  gk_Chorus_Mix, gk_Chorus_Depth, gk_Chorus_Rate,gk_Chorus_Offset      ;k(0.8),k(14),k(0.2),20 ;0.8,14,0.2,20
  endif

 

  ;-----------------------------------------
  ;- Region: _Apply Binaural
  if gk_Stereo == 1 then
      aleft,aright hrtfstat aOut, gi_Az, gi_Elev, gSstereoL,gSstereoR  
      aleft = aleft*2
      aright = aright*2
  else
      aleft = aOut
      aright= aOut
  endif
  
   
  ;-----------------------------------------
  ;- Region: _Out Audio
  outs     aleft, aright
  
  ;-----------------------------------------
  ;- Region: _Apply Echo
  if gk_Echo_On==1 then
      chnmix aleft,"Echo_SendL"
      chnmix aright,"Echo_SendR"
  endif

  ;-----------------------------------------
  ;- Region:  Apply Reverb
  if gk_Reverb_On ==1 then
      chnmix aleft*gk_Reverb_Mix,"Reverb_SendL"
      chnmix aright*gk_Reverb_Mix,"Reverb_SendR"
  endif
  



endin




/* Special thanks to Ian Mc Curdy and all contributors to Csound who have released a lot of their work
 for being used and/or reused by others */ 

instr 	1	;INSTRUMENT THAT SCANS MIDI AND STARTS AND STOPS NOTES
	insno	=	801					;INSTRUMENT NUMBER OF INSTRUMENT TO BE TRIGGERED
	MIDI_trigger_instrument	insno,0				;CALL UDO FOR STARTING AND STOPPING NOTE VIA MIDI
endin




</CsInstruments>
<CsScore>
;causes Csound to run for about 7000 years...
f0 z
i "InitData" 0 0.2
i "ManageGUI" 0 z
i "ManageGB" 0 z

i 1 0 z
</CsScore>
</CsoundSynthesizer>
