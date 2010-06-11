# Methods are the same for all Bloop Types SINE SAWTOOTH NOISE SQUARE

# 005:0> s1.methods.sort - Object.new.methods
# ["arp", "arp=", "aspeed", "aspeed=", "attack", "attack=", "decay", "decay=", "dslide", "dslide=", "freq",
#  "freq=", "hpf", "hpf=", "hsweep", "hsweep=", "limit", "limit=", "lpf", "lpf=", "lsweep", "lsweep=",
#  "phase",
#  "phase=", "psweep", "psweep=", "punch", "punch=", "repeat", "repeat=", "resonance", "resonance=", "slide",
#  "slide=", "square", "square=", "sustain", "sustain=", "sweep", "sweep=", "type=", "vdelay", "vdelay=",
#  "vibe", "vibe=", "volume", "volume=", "vspeed", "vspeed="]
    
require 'rubygems'
require 'bloops'

# the bloops o' phone
  b = Bloops.new
  b.tempo = 120
  
  # BASS 1
    s1 = b.sound Bloops::SINE
    s1.punch = 0.7
    s1.sustain = 0.866
    s1.vibe = 0.127
    s1.vspeed = 0.131
    s1.arp = 0.9
    s1.volume = 0.7
    
  # Melody 1
    s2 = b.sound Bloops::SAWTOOTH
    s2.punch = 0.441
    s2.sustain = 0.567
    s2.decay = 0.197
    s2.freq = 0.499
    s2.phase = 0.4
    s2.psweep = 0.05
    s2.volume = 0.9

  # Melody 2
    s3 = b.sound Bloops::SQUARE
    s3.resonance = 0.9
    s3.sustain = 0.65
    s3.decay = 0.55
    s3.hpf = 0.2
    s3.phase = 0.5
    s3.psweep = 0.8
    s3.volume = 0.75

  # Bass 2
    s4 = b.sound Bloops::SAWTOOTH
    s4.sustain = 0.2
    s4.decay = 0.7
    s4.vspeed = 0.4
    s4.vibe = 0.033
    s4.vdelay = 0.9
    s4.resonance = 0.90
    s4.volume = 0.7
    
# the tracks

  b.tune s1, %{
  - 1C  - 3:A   8:a# a   + c     3:c - 8:a   a#  + c  -  3:a   8:a + c   - a     1:a#
    a# + 3:c   8:c  c   - a   + 3:c - 8:a   a#  + c  -  3:a   8:d   d     c2    1:d
    a#   3:a + 8:c  2:c         3:c - 8:a   a#    a#    3:a + 8:c   c   - a     1:a# 
  + d    3:c   8:c  c   - d   + 3:c   8:c   c   - a     3:a   8:d   d     c2    1:d  }  # BASS 1 # loopy
  b.tune s2, %{
    1C    3:F   8:F  F     A     3:G   8:F   G     A     3:F   8:F   A +   C      1:D
    D    3:C - 8:A  A     F     3:G   8:F   G     A     3:F   8:D   D     C      1:F + 
    D    3:C - 8:A  A     F     3:G   8:F   G +   D     3:C - 8:A   A +   C      1:D
    F    3:C - 8:A  A     F     3:G   8:F   G   8:A 8:G 3:F   8:D   D     C      1:F  }  # MELODY 1 # bees
  b.tune s3, %{
    1c    3c    8c   c     f     3e    8d    e     e     3f    8f    f     f      1f
    f    3f    8f   f     f     3e    8d    e     e     3d    8:a3  a#3   a#3    1:a3
  + f    3f    8f   f     f     3e    8d    e     e     3f    8f    f     f      1f
    f    3f    8f   f     c     3e    8d    e     e     3d    8:a3  a#3   a#3    1:a3  } # MELODY 2
  b.tune s4, %{
  - 1c  - 3f    8g   a     f     3c    8c    c     c     3f    8f    f     f     1a#2
    a#   3a    8f   f     f     3c    8c    c     c     3d    8d    a#1   c2    1f 
  + f    3f    8f   f     a2 +  3c    8c    c     c     3f    8f    f     f     1a#
    a#   3a    8f   f     a2 +  3c    8c    c     c#    3d    8d    a#2   c3    1f  } # BASS 2
  

# and away we go
  b.play
  sleep 1 while !b.stopped?

