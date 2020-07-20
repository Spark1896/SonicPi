use_bpm 150
qs = (knit 1,4)
es = (knit 0.5,8)
ss = (knit 0.25,16)
define :intro do
  sleep 4
  use_synth :piano
  notes = [62,65,65,65,67,69]
  rests = [0.75,0.25,2,0.33,0.34,0.33]
  plar notes, rests, 6, 100, 90
  in_thread do
    notes = [70,70,65,67,67,67,65,65,63]
    rests = [0.25,0.5,0.25,0.33,0.34,0.33,1,0.75,0.25]
    plar notes, rests, 9, 105, 100
  end
  in_thread do
    use_synth :piano
    notes = [53,46,48,48]
    plar notes, qs, 4,110,100
  end
  notes = [58,46,51,39,53,41,53,41]
  plar notes, es, 8,90,100
end

define :e1 do
  in_thread do
    #drums
    2.times do
      sample :drum_heavy_kick, amp: 4
      sample :drum_snare_hard, amp: 0.7
      sleep 0.25
      3.times do
        sample :drum_cymbal_closed
        sleep 0.25
      end
    end
    sample :drum_heavy_kick, amp: 4
    sample :drum_snare_hard, amp: 0.7
    sample :drum_cymbal_closed
    sleep 1
    sample :drum_snare_hard
    sample :drum_heavy_kick, amp: 4
    sample :drum_splash_soft
    sample :drum_cymbal_closed
    sleep 1
  end
  in_thread do
    #mel
    use_synth :prophet
    notes = [70,70,70,70,70,70,65]
    rests = (knit 1,1,0.25,4,1,2)
    plar notes, rests, 7,110,130
  end
  #harm
  in_thread do
    with_fx :level, amp: 1.2 do
      use_synth :blade
      plar [50], [2], 1,110,100
    end
  end
  notes = [58,46,58,46,58,[58,46]]
  rests = [0.5,0.5,0.5,0.5,1,1]
  plar notes, rests, 6,110,100
end

define :e3 do
  in_thread do
    #drums
    2.times do
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
    #mel
    use_synth :prophet
    notes = [70,70,70,70,70,70,[70,74,82]]
    rests = (knit 1,1,0.25,4,1,2)
    plar notes, rests, 7,110,130
  end
  #harm
  in_thread do
    with_fx :level, amp: 1.2 do
      use_synth :blade
      notes = (knit 50,4)
      plar notes, [1,1,1,1], 4,110,100
    end
  end
  notes = [58,46,58,46,58,46,58,46]
  plar notes, (knit 0.5,8), 7,110,100
  #end bass
end


define :verse do
  qs = (knit 1,4)
  es = (knit 0.5,8)
  ss = (knit 0.25,16)
  in_thread do
    #start drums
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
    4.times do
      sample :drum_heavy_kick, amp: 4
      sample :drum_snare_hard, amp: 0.7
      sleep 0.25
      3.times do
        sample :drum_cymbal_closed
        sleep 0.25
      end
    end
    
    #end drums
  end
  in_thread do
    #start melody
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
    notes = [74,72,70,72,74,72,70,72,74,72,70,72,72]
    rests = (knit 0.25,12, 1,1,)
    plar notes, rests, 13,110,130
    #end mel
  end
  #start bass
  use_synth :tb303
  notes = [50,46,50,46,50,46,50,46]
  plar notes, es, 8,90,100
  notes = [50,38,51,39,52,40,53,41]
  plar notes, es, 8,85,100
  in_thread do
    with_fx :level, amp: 1.2 do
      use_synth :blade
      notes = (knit 51,4)
      plar notes, qs, 4,100,100
    end
  end
  notes = [58,46,58,46,58,46,58,46]
  plar notes, es, 8,90,100
  in_thread do
    with_fx :level, amp: 1.2 do
      use_synth :blade
      notes = [46,46,53,60]
      plar notes, qs, 4,110,100
    end
  end
  notes = [53,41,53,41,58,46,65,53]
  plar notes, es, 8,85,100
  notes = [50,46,50,46,50,46,50,46]
  plar notes, es, 8,90,100
  notes = [50,38,51,39,52,40,53,41]
  plar notes, es, 8,85,100
  in_thread do
    with_fx :level, amp: 1.2 do
      use_synth :blade
      notes = (knit 53,4)
      plar notes, qs, 4,110,100
    end
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
    with_fx :level, amp: 1.2 do
      use_synth :blade
      notes = [51,53,55,53]
      plar notes, qs, 4,110,100
    end
  end
  notes = [55,43,57,45,58,46,57,45]
  plar notes, es, 8,85,100
  in_thread do
    with_fx :level, amp: 1.2 do
      use_synth :blade
      notes = (knit 55,4)
      plar notes, qs, 4,110,100
    end
  end
  notes = [58,46,58,46,59,47,59,47]
  plar notes, es, 8,90,100
  in_thread do
    with_fx :level, amp: 1.2 do
      use_synth :blade
      notes = [56,56,58,57]
      plar notes, qs, 4,110,100
    end
  end
  notes = [60,48,60,48,61,49,61,49]
  plar notes, es, 8,95,100
  in_thread do
    with_fx :level, amp: 1.2 do
      use_synth :blade
      notes = (knit 58,3,53,1)
      plar notes, qs, 4,110,100
    end
  end
  notes = [62,50,62,50,62,50,57,45]
  plar notes, es, 8,100,100
  #end bass
end

define :e2 do
  in_thread do
    #drums
    2.times do
      sample :drum_heavy_kick, amp: 4
      sample :drum_snare_hard, amp: 0.7
      sleep 0.25
      3.times do
        sample :drum_cymbal_closed
        sleep 0.25
      end
    end
    sample :drum_heavy_kick, amp: 4
    sample :drum_snare_hard, amp: 0.7
    sample :drum_cymbal_closed
    sleep 1
    2.times do
      sample :drum_cymbal_closed
      sleep 0.5
    end
  end
  in_thread do
    #mel
    use_synth :prophet
    notes = [70,70,70,70,70]
    rests = (knit 1,1,0.25,3,1.75,1)
    plar notes, rests, 5,110,130
    plar [60,60],[0.25,0.25],2,90,110
  end
  #harm
  in_thread do
    with_fx :level, amp: 1.2 do
      use_synth :blade
      plar [50], [2], 1,110,100
    end
  end
  notes = [58,46,58,46,58,58,46]
  rests = [0.5,0.5,0.5,0.5,1.5,0.25,0.25]
  plar notes, rests, 7,110,100
end

define :bridge do
  in_thread do
    #drums
    #drums
    4.times do
      4.times do
        sample :drum_heavy_kick, amp: 2
        sample :drum_snare_hard, amp: 0.5
        sample :drum_cymbal_pedal
        sleep 0.5
        2.times do
          sample :drum_cymbal_closed, amp: 1
          sleep 0.25
        end
        sample :drum_heavy_kick, amp: 2
        sample :drum_cymbal_pedal
        sleep 0.5
        2.times do
          sample :drum_cymbal_closed, amp: 1
          sleep 0.25
        end
      end
    end
    1.times do
      6.times do
        sample :drum_heavy_kick, amp: 3
        sample :drum_cymbal_pedal
        sleep 0.5
        2.times do
          sample :drum_cymbal_closed
          sleep 0.25
        end
        sample :drum_snare_hard, amp: 1
        sample :drum_cymbal_pedal
        #sample :drum_heavy_kick, amp: 3
        sleep 0.5
        2.times do
          sample :drum_cymbal_closed
          sleep 0.25
        end
      end
    end
    4.times do
      sample :drum_heavy_kick, amp: 4
      sample :drum_snare_hard
      sample :drum_cymbal_pedal
      sleep 1
    end
    2.times do
      4.times do
        sample :drum_heavy_kick, amp: 4
        sample :drum_snare_soft, amp: 2
        sample :drum_cymbal_pedal
        sleep 0.5
        2.times do
          sample :drum_cymbal_closed
          sleep 0.25
        end
        sample :drum_heavy_kick, amp: 4
        sample :drum_cymbal_pedal
        sleep 0.5
        2.times do
          sample :drum_cymbal_closed
          sleep 0.25
        end
      end
    end
  end
  in_thread do
    #sfx
    2.times do
      sleep 12
      sample :ambi_lunar_land
      sleep 4
    end
  end
  in_thread do
    #mel
    use_synth :tb303
    notes = [69,60,60,69,60, 69,67,69,70,74,72,74,76,72,70,72,74,69,67,69,70, 65,62,65,67, 69,69,70,69,67,69]
    rests = [1.5,0.25,0.25,1.75,0.25] +(knit 0.25,16)+ [1.75,0.25,1,1, 1,0.25,0.25,0.25,0.25,1.5]
    plar notes, rests, 31,90,110
    notes = [60,60, 69,60,69,60, 69,67,69,70,74,72,74,76,72,70,72,74,69,67,69,70, 65,62,65,67, 69,70,69,70,69,67]
    rests = [0.25,0.25, 1.75,0.25,1.75,0.25] +(knit 0.25,16)+ [1.75,0.25,1,1, 1,0.25,0.25,0.25,0.25,1.5]
    plar notes, rests, 32,90,105
    notes = [62, 70,72,70,69,67,65,67,69, 70,72,70,69, 67]
    rests = [0.5, 1.25,0.25,0.25,0.25,1.25,0.25,0.25,0.25, 0.75,0.25,0.75,0.25, 1.75]
    plar notes, rests, 14,95,110
    notes = [60,72,74,72,70,69,67,69]
    rests = [0.25,1.25,0.25,0.25,0.25,1.25,0.25,0.25]
    plar notes, rests, 8,100,115
    notes = [70, 72,70,69,67,65,64,62]
    rests = [0.25, 0.75,0.25,0.75,0.25,0.75,0.25,0.75]
    plar notes, rests, 8,105,120
    notes = [60, 69,60,60,69, 60,69,74, 72,69, 65,69,67, 65,77,65]
    rests = [0.25,1.5,0.25,0.25,1.75,0.25, 1,1,1,1, 1,1,2, 2.5,1,0.25]
    notes = [60, 69,60,60,69,60, 69,67,69,70,74,72,74,76,72,70,72,74,69,67,69,70, 65,63,65,67,69,67,65,63,65,67,65,67,65,67,69,70, 65,77,65]
    rests = [0.25, 1.5,0.25,0.25,1.75,0.25] +(knit 0.25,32)+ [ 2.5,1,0.25]
    plar notes, rests, 41,100,115
  end
  #base
  use_synth :prophet
  notes = [53,41,52,40,50,38,48,36, 53,41,58,46,57,45,53,41]
  plar notes, es+es, 16,90,100
  notes = [50,38,48,36,46,34,43,31, 41,29,52,40,50,38,48,36]
  plar notes, es+es, 16,95,100
  notes = [53,41,52,40,50,38,48,36, 53,41,58,46,57,45,52,40]
  plar notes, es+es, 16,90,100
  notes = [50,38,48,36,46,34,46,34, 45,33,52,40,51,39,50,38]
  plar notes, es+es, 16,95,100
  notes = [43,31,55,38,43,31,55,38, 43,31,55,38,48,36,38,40]
  plar notes, es+es+es, 16,100,100
  notes = [41,29,53,36,41,29,53,36, 41,29,53,36]
  plar notes, es+es, 12,105,100
  notes = [48,36,48,36]
  plar notes, (knit 0.5,4), 4,100,100
  notes = [53,41,52,40,50,38,48,36, 53,41,58,46,57,45,52,40, 50,38,55,43,48,36,48,36]
  plar notes, es+es+es, 24,110,100
  notes = [53,41,53,41,53,41,53,41,53,41]
  plar notes, (knit 0.25,10), 10,85,100
  sleep 0.25
  plar [53,53],[1,0.25],2,100,100
end
e2
bridge
verse
e3