use_bpm 160
use_synth :noise
with_fx :wobble, phase: 4, invert_wave: 1, phase_offset: 0.75 do
  4.times do
    play 60, release: 0.25, amp: 0.3
    sleep 0.25
  end
end

define :pintro do
  5.times do
    sample :drum_splash_hard, amp: 0.5
    sleep 2
    sample :drum_heavy_kick
    sleep 2
  end
  4.times do
    play 60, release: 0.35, amp: 0.5, cutoff: 105
    sleep 0.25
  end
  sleep 1
  4.times do
    play 60, release: 0.35, amp: 0.5, cutoff: 110
    sleep 0.25
  end
  sleep 1
end
define :pver1 do
  14.times do
    2.times do
      sample :drum_heavy_kick
      sleep 1
      play 60, release: 1.5, amp: 0.5
      sleep 1
    end
  end
  
  4.times do
    play 60, release: 0.35, amp: 0.5, cutoff: 105
    sleep 0.25
  end
  sleep 1
  4.times do
    play 60, release: 0.35, amp: 0.5, cutoff: 110
    sleep 0.25
  end
  sleep 1
end
define :pver2 do
  sample :drum_splash_hard, amp: 0.5
  sleep 3
  sample :drum_cymbal_pedal
  sleep 0.25
  3.times do
    sample :drum_cymbal_closed
    sleep 0.25
  end
  5.times do
    2.times do
      play 60, release: 1.5, amp: 0.5
      sleep 0.5
      sample :drum_cymbal_closed
      sleep 0.5
      sample :drum_heavy_kick
      sleep 0.5
      sample :drum_cymbal_closed
      sleep 0.5
    end
  end
  15.times do
    2.times do
      sample :drum_heavy_kick
      sleep 0.5
      sample :drum_cymbal_closed
      sleep 0.5
      play 60, release: 1.5, amp: 0.5
      sleep 0.5
      sample :drum_cymbal_closed
      sleep 0.5
    end
  end
  4.times do
    play 60, release: 0.35, amp: 0.5, cutoff: 105
    sleep 0.25
  end
  sleep 1
  4.times do
    play 60, release: 0.35, amp: 0.5, cutoff: 110
    sleep 0.25
  end
end
define :pchor1 do
  7.times do
    2.times do
      sample :drum_heavy_kick
      sleep 0.5
      sample :drum_cymbal_closed, amp: 0.75
      sleep 0.5
      play 60, release: 1.5, amp: 0.5
      sleep 0.5
      sample :drum_cymbal_closed, amp: 0.75
      sleep 0.5
    end
  end
  5.times do
    play 60, release: 0.6, amp: 0.5
    sleep 0.5
  end
  sleep 1.5
end
define :pchor2 do
  7.times do
    2.times do
      sample :drum_heavy_kick
      sleep 0.5
      3.times do
        sample :drum_cymbal_closed
        sleep 0.5
      end
    end
  end
  8.times do
    play 60, release: 0.8, amp: 0.5
    sleep 0.5
  end
  
  15.times do
    2.times do
      sample :drum_heavy_kick
      sleep 0.5
      sample :drum_cymbal_closed
      sleep 0.25
      sample :drum_cymbal_closed
      sleep 0.25
      sample :drum_cymbal_closed
      play 60, release: 1.5, amp: 0.5
      sleep 0.5
      sample :drum_cymbal_closed
      sleep 0.25
      sample :drum_cymbal_closed
      sleep 0.25
    end
  end
  8.times do
    play 60, release: 0.8, amp: 0.5
    sleep 0.5
  end
  sample :drum_splash_hard, amp: 0.5
end
define :perc do
  
  use_synth :noise
  pintro
  pver1
  pchor1
  pver2
  pchor2
end