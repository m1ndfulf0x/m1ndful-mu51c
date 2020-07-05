# Terra Jingle Version 2
use_bpm 75

with_fx :distortion, mix: 1.0, distort: 0.9 do
  
  use_synth :mod_fm  #:prophet or :fm
  play :G5
  sleep 0.5
  play :Bb4
  sleep 0.5
  play :C5
  sleep 0.5
  play :C5
  sleep 0.5
  #sample :drum_splash_hard, finish: 0.26, release: 0.4, amp: 3.0
  
end
sample :perc_snap2, amp: 3.0
sleep 0.5
with_fx :reverb, mix: 1, room: 0.9 do
  use_synth :fm
  play :C6, amp: 4.0
  sleep 4.0
end

