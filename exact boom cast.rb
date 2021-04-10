# exact boom cast

live_loop :guit do
  with_fx :echo, mix: 0.3, phase: 0.25 do
    sample :guit_em9, rate: 0.5
    sample :guit_harmonics, rate: 1, amp: 2.0
    # sample :guit_em9, rate: -1
  end
  #  sample :guit_em9, rate: -0.5
  sleep 8
end
live_loop :boom do
  with_fx :reverb, room: 1 do
    sample :bd_boom, amp: 4, rate: 1
    sample :bd_tek, amp: 1.5, rate: 10
  end
  sleep 8
end