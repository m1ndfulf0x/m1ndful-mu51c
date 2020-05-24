# minimal fast bop

define :e3_tick do
  live_loop :arp do
    play (scale :e3, :minor_pentatonic).tick, release: 0.1, amp: 0.5
    sleep 0.125
  end
end

define :e2_tick do
  live_loop :arp2 do
    play (scale :e2, :scriabin).tick, release: 0.2
    sleep 0.25
  end
end

e3_tick
e2_tick
