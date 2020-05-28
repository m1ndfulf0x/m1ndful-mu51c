# minimal fast bop

define :e3_tick do |r, s, us|
  live_loop :arp do
    if us == 1
      use_synth :growl
      play (scale :e3, :minor_pentatonic).tick, release: r, amp: 2.5
    else
      use_synth :beep
      play (scale :e3, :minor_pentatonic).tick, release: r, amp: 0.6
    end
    sleep s
  end
end

define :e2_tick do |r, s|
  live_loop :arp2 do
    play (scale :e2, :scriabin).tick, release: r, amp: 1
    sleep s
  end
end

define :one_note do |n, s, a|
  play n, amp: a
  sleep s
end

define :drum1 do |s, a|
  live_loop :splash do
    sleep s
    sample :drum_cymbal_pedal , amp: a
    sleep 0.22
  end
end

define :drum2 do |s, a|
  live_loop :bass_drum do
    sample :drum_bass_hard, amp: a
    sleep 0.225
    sample :drum_bass_hard, amp: a
    sleep 0.775
  end
end

define :simple_sample do |r, s|
  # loop do
  sleep s
  sample :guit_e_slide, rate: r, amp: 0.8
  # end
end

# stick it together
e3_tick 0.2, 0.125, 0
e2_tick 0.2, 0.25
drum1 0.53, 1    #0 for muting drums
#drum2 0, 0.8
#simple_sample 1.5, 0.53
#simple_sample 1, 0.53
#simple_sample 1.2, 1.06
#simple_sample 0.75, 1.06
live_loop :def_note do
  with_fx :reverb, mix: 0.9, room: 0.6 do
    one_note 64, 4, 2.2
    one_note 59, 3, 2.2
  end
end

