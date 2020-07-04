use_bpm 155

#sample "/Users/home/Desktop/Boss\ RC-30/028_1.WAV", rate: 1.0, amp: 65.0, finish: 0.115
#sleep 3.5


with_fx :slicer, phase: 0.4, phase_slide: 2.5 do |e|
  with_fx :reverb, room: 0.9 do
    sample :ambi_glass_hum, amp: 0.9, rate: 2.0, attack: 0.3 , sustain: 1.8, release: 1.2
    control e, phase: 0.2
    sleep 2.0
  end
end
#sample "/Users/home/Desktop/Boss\ RC-30/028_1.WAV", rate: 1.0, amp: 65.0, start: 0.115, finish: 0.230
#sleep 1.0


use_synth :fm
play :B3, pan: -0.5
use_synth :hollow
play :B4, amp: 1.8, cutoff: 90, attack: 0.1, attack_level: 0.1, sustain: 1.0, sustain_level: 1.1, pan: -0.5
sleep 0.5
use_synth :beep
play :D4, pan: -0.4
#play :A5
sleep 0.5
play :Fs4, pan: -0.2
#play :B5
sleep 0.5
play chord(:A4, :maj9), amp: 1.0
use_synth :hollow
play :A5, amp: 1.8, cutoff: 90, attack: 0.1, attack_level: 0.1, sustain: 0.8, sustain_level: 1.1
#play :Fs5
sleep 0.5
use_synth :piano
play :Gs5, pan: 0.2
play :Gs4
sleep 0.5
play :E4, pan: 0.4
play :E3, pan: 0.2
play :E2
sleep 0.5
play :B3, attack: 0.1, attack_level: 0.1, decay: 0.2, decay_level: 1, sustain: 2.0, sustain_level: 0.8, release: 2.0, pan: 0.5
play :B1, attack: 0.1, attack_level: 0.1, decay: 0.2, decay_level: 1, sustain: 2.0, sustain_level: 0.8, release: 2.0, pan: 0.5
play :B0, attack: 0.1, attack_level: 0.1, decay: 0.2, decay_level: 1, sustain: 2.0, sustain_level: 0.8, release: 2.0, pan: 0.5
play :Fs4, amp: 1.6, attack: 0.1, attack_level: 0.1, decay: 0.2, decay_level: 1, sustain: 2.0, sustain_level: 0.8, release: 2.0, pan: 0.5


#use_synth :beep
#play :Fs4, amp: 0.6, cutoff: 90, attack: 0.1, attack_level: 0.1, sustain: 1.75, sustain_level: 0.6, release: 2.0, pan: 0.5
sleep 5.0
