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
sample :perc_snap2, amp: 2.5
sleep 0.5
with_fx :reverb, mix: 1, room: 0.9 do
  use_synth :fm
  play :C6, amp: 4.0
  sleep 4.0
end

