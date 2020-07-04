use_bpm 155
with_fx :slicer, phase: 0.25, phase_slide: 5 do |e|
  sample :ambi_glass_hum, amp: 4.0, rate: 2.0, attack: 0.1 , sustain: 2.0, release: 1.2
  control e, phase: 0.125
  sleep 1.0
end
use_synth :fm
play :B3, pan: -0.5
use_synth :hoover
play :B4, amp: 0.8, cutoff: 90, attack: 0.1, attack_level: 0.1, sustain: 0.4, sustain_level: 1.1, pan: -0.5
sleep 0.5
use_synth :fm
play :D4, pan: -0.4
#play :A5
sleep 0.5
play :Fs4, pan: -0.2
#play :B5
sleep 0.5
play chord(:A4, :maj9), amp: 1.0
use_synth :hoover
play :A5, amp: 0.8, cutoff: 90, attack: 0.1, attack_level: 0.1, sustain: 0.2, sustain_level: 1.1
#play :Fs5
sleep 0.5
use_synth :fm
play :Gs5, pan: 0.2
sleep 0.5
play :E4, pan: 0.4
sleep 0.5
play :B3, attack: 0.1, attack_level: 0.1, decay: 0.2, decay_level: 1, sustain: 2.0, sustain_level: 0.8, release: 2.0, pan: 0.5
#use_synth :hoover
play :Fs4, amp: 0.8, cutoff: 90, attack: 0.1, attack_level: 0.1, sustain: 2.0, sustain_level: 0.8, release: 2.0, pan: 0.5
sleep 5.0
