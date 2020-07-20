
define :splar do |nos, len, size, cutl, cuth, pan|
  puts "plar"
  a = 0
  use_random_seed 1
  size.times do
    play nos[a], release: len[a]*0.2, sustain: len[a]*0.8, cutoff: rrand(cutl, cuth), pan: rrand(0, pan)
    sleep len[a]
    a = inc a
  end
end

use_bpm 160


#comment do
swrc = "C:/Program Files (x86)/Steam/steamapps/common/Star Wars Republic Commando/GameData/Music"
sample swrc, "musgen_adennwspr_ol", rate: 1.35
sleep 1
sample swrc, "musgen_astwspr_ol", rate: 1.35
sleep 1
sample swrc, "musgen_tratuwspr_ol", rate: 1.35
sleep 2
#end
in_thread do
  with_fx :reverb do
    use_synth :prophet
    notes = [72,60,72,60,72,60,62,72,60,64,72,60,65,67]
    rests = [0.25,0.5,0.25,0.5]+(knit 0.25,10)
    splar notes, rests, 14, 65, 70, 1
    notes = [70,58,70,58,70,58,67,70,58,65,70,58,64,62]
    rests = [0.25,0.5,0.25,0.5]+(knit 0.25,10)
    splar notes, rests, 14, 70, 75, -1
    notes = [72,60,72,60,72,60,62,72,60,64,72,60,65,67]
    rests = [0.25,0.5,0.25,0.5]+(knit 0.25,10)
    splar notes, rests, 14, 75, 80, 0.9
    notes = [70,58,70,58,70,58,67,70,58,65,70,58,64,62]
    rests = [0.25,0.5,0.25,0.5]+(knit 0.25,10)
    splar notes, rests, 14, 80, 85, -0.9
    notes = [72,60,72,60,72,60,62,72,60,64,72,60,65,67]
    rests = [0.25,0.5,0.25,0.5]+(knit 0.25,10)
    splar notes, rests, 14, 85, 90, 0.8
    notes = [70,58,70,58,70,58,:rest,70,70]
    rests = [0.25,0.5,0.25,0.5,0.25,0.5,1.25,0.25,0.25]
    splar notes,rests,9, 90, 95, -0.8
  end
  
  7.times do
    notes = [72,60,72,60,72,60,62,72,60,64,72,60,65,67]
    rests = [0.25,0.5,0.25,0.5]+(knit 0.25,10)
    splar notes, rests, 14, 95, 100, 0.75
    notes = [70,58,70,58,70,58,67,70,58,65,70,58,64,62]
    rests = [0.25,0.5,0.25,0.5]+(knit 0.25,10)
    splar notes, rests, 14, 100, 105, -0.75
  end
  notes = [72,60,72,60,72,60,62,72,60,64,72,60,65,67]
  rests = [0.25,0.5,0.25,0.5]+(knit 0.25,10)
  splar notes, rests, 14, 85, 90, 0.75
  notes = [70,58,70,58,70,58,:rest,70,70]
  rests = [0.25,0.5,0.25,0.5,0.25,0.5,1.25,0.25,0.25]
  splar notes,rests,9, 90, 95, -0.75
  9.times do
    notes = [72,60,72,60,72,60,62,72,60,64,72,60,65,67]
    rests = [0.25,0.5,0.25,0.5]+(knit 0.25,10)
    splar notes, rests, 14, 65, 70, 0.75
    notes = [70,58,70,58,70,58,67,70,58,65,70,58,64,62]
    rests = [0.25,0.5,0.25,0.5]+(knit 0.25,10)
    splar notes, rests, 14, 70,75, -0.75
  end
  notes = [72,60,72,60,72,60,62,72,60,64,72,60,65,67]
  rests = [0.25,0.5,0.25,0.5]+(knit 0.25,10)
  splar notes, rests, 14, 85,90, 0.75
  notes = [70,58,70,58,70,58]
  rests = [0.25,0.5,0.25,0.5,0.25,0.5]
  splar notes,rests,6, 90,95, -0.75
end

sample :drum_heavy_kick, amp: 2, pan: -0.5
sample :drum_splash_hard, amp: 0.5, pan: 0.5
sleep 4
sample :drum_heavy_kick, amp: 2.1, pan: 0.5
sample :drum_splash_hard, amp: 0.55, pan: 0.5
sleep 4
sample :drum_heavy_kick, amp: 2.2, pan: -0.5
sample :drum_splash_hard, amp: 0.6, pan: 0.5
sleep 4
sample :drum_heavy_kick, amp: 2.3, pan: 0.5
sample :drum_splash_hard, amp: 0.65, pan: 0.5
sleep 4

sample :drum_splash_hard, amp: 0.7, pan: 0.5
4.times do
  sample :drum_heavy_kick, amp: 1.5, pan: 0.1
  sleep 1
end

in_thread do
  use_synth :blade
  play 67, release: 0.1, sustain: 0.4, cutoff: 110, pan: -0.9
  sleep 0.75
  play 65, release: 0.1, sustain: 0.4, cutoff: 110
  sleep 0.75
  play 64, release: 0.1, sustain: 0.4, cutoff: 110, pan: 0.9
end
sample :drum_splash_hard
3.times do
  sample :drum_heavy_kick, amp: 2
  sleep 1
end
sleep 1
in_thread do
  in_thread do
    use_synth :blade
    7.times do
      4.times do
        play 72, release: 0.45, cutoff: 110, pan: -0.75
        sleep 0.5
        play 60, release: 0.45, cutoff: 100, pan: -0.9
        sleep 0.5
      end
      4.times do
        play 70, release: 0.45, cutoff: 110, pan: 0.75
        sleep 0.5
        play 58, release: 0.45, cutoff: 100, pan: 0.9
        sleep 0.5
      end
    end
    4.times do
      play 72, release: 0.45, cutoff: 110, pan: -0.75
      sleep 0.5
      play 60, release: 0.45, cutoff: 100, pan: -0.9
      sleep 0.5
    end
    play 67, release: 0.1, sustain: 0.4, cutoff: 110, pan: -0.9
    sleep 0.75
    play 65, release: 0.1, sustain: 0.4, cutoff: 110
    sleep 0.75
    play 64, release: 0.1, sustain: 0.4, cutoff: 110, pan: 0.9
    sync :cor
    9.times do
      4.times do
        play 72, release: 0.45, cutoff: 110, pan: -0.75
        sleep 0.5
        play 60, release: 0.45, cutoff: 100, pan: -0.9
        sleep 0.5
      end
      4.times do
        play 70, release: 0.45, cutoff: 110, pan: 0.75
        sleep 0.5
        play 58, release: 0.45, cutoff: 100, pan: 0.9
        sleep 0.5
      end
    end
    4.times do
      play 72, release: 0.45, cutoff: 110, pan: -0.75
      sleep 0.5
      play 60, release: 0.45, cutoff: 100, pan: -0.9
      sleep 0.5
    end
    play 67, release: 0.1, sustain: 0.4, cutoff: 110, pan: -0.9
    sleep 0.75
    play 65, release: 0.1, sustain: 0.4, cutoff: 110
    sleep 0.75
    play 64, release: 0.1, sustain: 0.4, cutoff: 110, pan: 0.9
  end
  
  use_synth :tb303
  sleep 32
  play 48, release: 4, cutoff: 80, amp: 0.7, pan: -0.05
  sleep 4
  play 43, release: 2, cutoff: 85, amp: 0.75, pan: -0.25
  sleep 2
  play 46, release: 2, cutoff: 90, amp: 0.8, pan: -0.1
  sleep 2
  play 48, release: 8, cutoff: 95, amp: 0.85, pan: -0.05
  sleep 8
  play 48, release: 4, cutoff: 100, amp: 0.9, pan: -0.05
  sleep 4
  play 43, release: 2, cutoff: 105, amp: 0.95, pan: -0.25
  sleep 2
  play 46, release: 2, cutoff: 110, amp: 1, pan: -0.1
  sync :cor
  2.times do
    play 48, release: 4, pan: -0.05
    sleep 4
    play 43, release: 2, pan: -0.25
    sleep 2
    play 46, release: 2, pan: -0.1
    sleep 2
    play 48, release: 8, pan: -0.05
    sleep 8
  end
  use_synth :tb303
  2.times do
    notes = (knit 60,6, 55,3, 58,3, 60,12)
    rests = (knit 0.75,2,1,1,0.5,3, 0.75,2,0.5,1, 0.75,2,0.5,1, 0.75,2,1,1,0.5,3,0.75,2,1,1,0.5,3)
    splar notes, rests, 24, 90, 120, 0.3
  end
  use_synth :tb303
  play 48, release: 4, cutoff: 100, pan: -0.05
  sleep 4
  play 43, release: 2, cutoff: 105, pan: -0.25
  sleep 2
  play 46, release: 2, cutoff: 110, pan: -0.1
end
15.times do
  4.times do
    sample :drum_heavy_kick, amp: 4
    sleep 0.5
    sample :drum_cymbal_pedal, pan: -0.5
    sleep 0.25
    sample :drum_cymbal_closed, pan: -0.5
    sleep 0.25
  end
end
sample :drum_splash_hard, amp: 0.75
2.times do
  sample :drum_heavy_kick, amp: 4, pan: 0.1
  sleep 0.5
  sample :drum_cymbal_pedal, pan: -0.5
  sleep 0.25
  sample :drum_cymbal_closed, pan: -0.5
  sleep 0.25
end
sleep 2
cue :cor
19.times do
  4.times do
    sample :drum_heavy_kick, amp: 4, pan: 0.1
    sleep 0.5
    sample :drum_cymbal_pedal, pan: -0.5
    sleep 0.25
    sample :drum_cymbal_closed, pan: -0.5
    sleep 0.25
  end
end
2.times do
  sample :drum_heavy_kick, amp: 4, pan: 0.1
  sleep 0.5
  sample :drum_cymbal_pedal, pan: -0.5
  sleep 0.25
  sample :drum_cymbal_closed, pan: -0.5
  sleep 0.25
end

