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
qs = (knit 1,4)
es = (knit 0.5,8)
ss = (knit 0.25,16)
intro
verse
e1
verse
e2
bridge
verse
e3