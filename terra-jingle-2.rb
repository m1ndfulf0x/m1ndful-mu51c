# Terra Jingle Version 2
use_bpm 75

with_fx :distortion, mix: 0.25, distort: 0.7 do
  use_synth :mod_fm
  play :G5
  sleep 0.5
  play :Bb4
  sleep 0.5
  play :C5
  sleep 0.5
  play :C5
  sleep 0.5
end
sample :perc_snap2, amp: 2.1
sleep 0.5
'
with_fx :reverb, mix: 1, room: 0.9 do
  use_synth :fm
  play :C6, amp: 4.0
  sleep 4.0
end
'
# alternatively playing piano chord from 1st version
use_synth :piano
play :C4, attack: 0.1, attack_level: 0.2, decay: 0.2, decay_level: 1.8, sustain: 2.0, sustain_level: 1.5, release: 2.0
play :C2, attack: 0.1, attack_level: 0.2, decay: 0.2, decay_level: 1.8, sustain: 2.0, sustain_level: 1.5, release: 2.0
play :C1, attack: 0.1, attack_level: 0.2, decay: 0.2, decay_level: 1.8, sustain: 2.0, sustain_level: 1.5, release: 2.0
play :G4, amp: 3.2, attack: 0.1, attack_level: 0.2, decay: 0.2, decay_level: 2.0, sustain: 2.0, sustain_level: 1.6, release: 2.0
