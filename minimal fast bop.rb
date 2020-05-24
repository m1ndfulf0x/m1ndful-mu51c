# minimal fast bop

define :e3_tick do
  live_loop :arp do
    play (scale :e3, :minor_pentatonic).tick, release: 0.2, amp: 0.6
    sleep 0.125
  end
end

define :e2_tick do
  live_loop :arp2 do
    play (scale :e2, :scriabin).tick, release: 0.2
    sleep 0.25
  end
end

define :one_note do |n, s, a|
  play n, amp: a
  sleep s
end

define :drum1 do |s|
  live_loop :splash do
    sleep s
    sample :drum_cymbal_pedal, amp: 0.8
    sleep 0.22
  end
end


e3_tick
e2_tick
drum1 0.53
live_loop :def_note do
  one_note 64, 4, 1.2
  one_note 59, 3, 1.2
end

