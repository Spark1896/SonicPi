define :plar do |nos, len, size, minc, maxc|
  puts "plar"
  a = 0
  size.times do
    play nos[a], release: len[a]*0.2, sustain: len[a]*0.8, pan: -0.5, pitch: 0, cutoff: minc
    sleep len[a]
    a = inc a
  end
end

use_bpm 150
live_loop :a do
  sleep 4
  use_synth :piano
  notes = [62,65,65,65,67,69]
  rests = [0.75,0.25,2,0.33,0.34,0.33]
  plar notes, rests, 6, 100, 90
  in_thread do
    sleep 4
    sample :ambi_lunar_land
    
    7.times do
      2.times do
        sample :drum_heavy_kick, amp: 3
        2.times do
          sample :drum_cymbal_pedal
          sleep 0.25
          sample :drum_cymbal_closed
          sleep 0.25
        end
        sample :drum_snare_hard, amp: 0.5
        sample :drum_heavy_kick, amp: 2
        2.times do
          sample :drum_cymbal_pedal
          sleep 0.25
          sample :drum_cymbal_closed
          sleep 0.25
        end
      end
    end
    sleep 1
    sample :drum_snare_hard
    sleep 0.1
    sample :drum_snare_hard
    sleep 0.23
    sample :drum_snare_hard
    sleep 0.34
    sample :drum_snare_hard
    sleep 0.33
    sample :drum_snare_hard
    sample :drum_splash_hard
    sleep 2
    4.times do
      2.times do
        sample :drum_heavy_kick, amp: 3
        2.times do
          sample :drum_cymbal_pedal
          sleep 0.25
          sample :drum_cymbal_closed
          sleep 0.25
        end
        sample :drum_snare_hard, amp: 0.5
        sample :drum_heavy_kick, amp: 2
        2.times do
          sample :drum_cymbal_pedal
          sleep 0.25
          sample :drum_cymbal_closed
          sleep 0.25
        end
      end
    end
    2.times do
      2.times do
        sample :drum_snare_hard, amp: 0.6
        sample :drum_heavy_kick, amp: 3
        2.times do
          sample :drum_cymbal_pedal
          sleep 0.25
          sample :drum_cymbal_closed
          sleep 0.25
        end
        sample :drum_snare_hard, amp: 0.6
        sample :drum_heavy_kick, amp: 3
        2.times do
          sample :drum_cymbal_pedal
          sleep 0.25
          sample :drum_cymbal_closed
          sleep 0.25
        end
      end
    end
    6.times do
      sample :drum_heavy_kick, amp: 4
      sample :drum_snare_hard, amp: 0.7
      3.times do
        sample :drum_cymbal_closed
        sleep 0.25
      end
      sleep 0.25
    end
    sample :drum_heavy_kick, amp: 4
    sample :drum_snare_hard, amp: 0.7
    sample :drum_cymbal_closed
    sleep 1
    sample :drum_snare_hard
    sample :drum_heavy_kick, amp: 4
    sample :drum_splash_hard
    sample :drum_cymbal_closed
    sleep 1
  end
  in_thread do
    notes = [70,70,65,67,67,67,65,65,63]
    rests = [0.25,0.5,0.25,0.33,0.34,0.33,1,0.75,0.25]
    plar notes, rests, 9, 105, 100
    use_synth :prophet
    notes = [62,62,62, 65,65,65,67,65, 63,62,60,63]
    rests = [0.25,0.25,0.25,0.25,1.25,0.25,0.25,0.25, 0.25,0.25,0.25,0.25]
    plar notes, rests, 12, 110, 130
    notes = [62,58,50,62,63,58,51,63,64,58,52,64,65,58,53,65]
    rests = (knit 0.25,16)
    plar notes, rests, 16,110,130
    notes = [67,67,70,70,67,69, 72,70,67,72]
    rests = [0.5,0.25,0.25,1.5,0.25,0.25, 0.25,0.25,0.25,0.25]
    plar notes, rests, 10,110,130
    notes = [65,65,60,60,63,65,63,65]
    rests = (knit 2,1, 0.25,6, 0.5,1)
    plar notes, rests, 8,110,130
    notes = [62,62,62,65,65,65,67,65, 63,62,60,63]
    rests = [0.25,0.25,0.25,0.25,1.25,0.25,0.25,0.25, 0.25,0.25,0.25,0.25]
    plar notes, rests, 12, 110, 130
    notes = [62,58,50,62,63,58,51,63,64,58,52,64,65,58,53,65]
    rests = (knit 0.25,16)
    plar notes, rests, 16,110,130
    notes = [69,69,72,72,70,69, 70,69,67,70]
    rests = [0.5,0.25,0.25,1.5,0.25,0.25, 0.25,0.25,0.25,0.25]
    plar notes, rests, 10,110,130
    notes = (knit 65,1, 77,5, 65,1,63,1,62,1 )
    rests = [1,0.33,0.34,0.33,1,0.25,0.25,0.25,0.25]
    plar notes, rests, 9,110,130
    notes = [62,62,62,65,65,67,65, 63,62,60,63]
    rests = [0.25,0.25,0.25,0.25,1.5,0.25,0.25, 0.25,0.25,0.25,0.25]
    plar notes, rests, 11,110,130
    notes = [62,58,50,62, 63,58,51,63, 64,58,52,64,65,58,53,65]
    rests = (knit 0.25,16)
    plar notes, rests, 16,110,130
    notes = [67,67,70,70, 67,69,70,67]
    rests = [0.5,0.25,0.25,2, 0.25,0.25,0.25,0.25]
    plar notes, rests, 8,110,130
    notes = [[69,81],[62,69,74]]
    rests = [3,1]
    plar notes, rests, 2,110,130
    notes = (knit 70,4, 71,4, 72,4, 73,5)
    rests = (knit 1.25,1,0.25,3, 1.25,1,0.25,3, 1.25,1,0.25,3, 1,1,0.25,4)
    plar notes, rests, 17,110,130
    notes = [74,72,70,72,74,72,70,72,74,72,70,72,72,70,70,70,70,70,70,[70,74,82]]
    rests = (knit 0.25,12, 1,1,1,1,0.25,4,1,2)
    plar notes, rests, 20,110,130
  end
  
  qs = (knit 1,4)
  es = (knit 0.5,8)
  ss = (knit 0.25,16)
  in_thread do
    use_synth :piano
    notes = [53,46,48,48]
    plar notes, qs, 4,110,100
  end
  notes = [58,46,51,39,53,41,53,41]
  plar notes, es, 8,90,100
  use_synth :tb303
  notes = [50,46,50,46,50,46,50,46]
  plar notes, es, 8,90,100
  notes = [50,38,51,39,52,40,53,41]
  plar notes, es, 8,85,100
  in_thread do
    use_synth :blade
    notes = (knit 53,4)
    plar notes, qs, 4,100,100
  end
  notes = [58,46,58,46,58,46,58,46]
  plar notes, es, 8,90,100
  in_thread do
    use_synth :blade
    notes = [46,46,53,60]
    plar notes, qs, 4,110,100
  end
  notes = [53,41,53,41,58,46,65,53]
  plar notes, es, 8,85,100
  notes = [50,46,50,46,50,46,50,46]
  plar notes, es, 8,90,100
  notes = [50,38,51,39,52,40,53,41]
  plar notes, es, 8,85,100
  in_thread do
    use_synth :blade
    notes = (knit 55,4)
    plar notes, qs, 4,110,100
  end
  notes = [60,48,60,48,60,48,60,48]
  plar notes, es, 8,90,100
  sleep 1
  notes = (knit [65,53],4)
  rests = [0.33,0.34,0.33,1]
  plar notes, rests, 4,80,100
  sleep 1
  notes = [50,46,50,46,50,46,50,46]
  plar notes, es, 8,90,100
  notes = [50,38,51,39,52,40,53,41]
  plar notes, es, 8,85,100
  notes = [51,43,51,43,51,43,51,43]
  plar notes, es, 8,90,100
  in_thread do
    use_synth :blade
    notes = [51,53,55,53]
    plar notes, qs, 4,110,100
  end
  notes = [55,43,57,45,58,46,57,45]
  plar notes, es, 8,85,100
  in_thread do
    use_synth :blade
    notes = (knit 55,4)
    plar notes, qs, 4,110,100
  end
  notes = [58,46,58,46,59,47,59,47]
  plar notes, es, 8,90,100
  in_thread do
    use_synth :blade
    notes = [56,56,58,57]
    plar notes, qs, 4,110,100
  end
  notes = [60,48,60,48,61,49,61,49]
  plar notes, es, 8,95,100
  in_thread do
    use_synth :blade
    notes = (knit 58,3,53,1)
    plar notes, qs, 4,110,100
  end
  notes = [62,50,62,50,62,50,57,45]
  plar notes, es, 8,100,100
  in_thread do
    use_synth :blade
    notes = (knit 50,4)
    plar notes, qs, 4,110,100
  end
  notes = [58,46,58,46,58,46,58,46]
  plar notes, es, 7,110,100
end