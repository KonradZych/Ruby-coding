class Song
   def initialize(name, artist, duration)
      @name = name
      @artist = artist
      @duration = duration
   end
end

#creating new object of class Song
Song1 = Song.new("Ruby", "Kaiser chiefs", 210)

#let's see whats inside
Song1.inspect

#print class as a strng (by def returns class ID)
Song1.to_s

#overwriting standard class printing as a string to make it more useful
#cool stuff - classes are open so no need to redefining the whole thing
class Song
   def to_s
      #duration should be displayed as min:s
      "Song: #{@name} by #{@artist} (#{@duration/60}:#{@duration%60})"
   end
end

#way cooler now
Song1.to_s

###   INHERITANCE

#daughter class of Song
class KaraokeSong < Song
   def initialize(name, artist, duration, lyrics)
   #super means this goes to the superclass!
      super(name, artist, duration)
      @lyrics = lyrics
   end
end

#creating new object of class KaraokeSong
Song1 = KaraokeSong.new("Ruby", "Kaiser chiefs", 210, "Ruby, Ruby, Ruby, Ruby")

#Ruby looks for to_s in the class, if not found then in its parent etc.
Song1.to_s

#to display also the lyrics - nasty way
class KaraokeSong
   def to_s
       "Song: #{@name} by #{@artist} (#{@duration/60}:#{@duration%60}). Lyrics: [#{@lyrics}]"
   end
end

#It workz!
Song1.to_s

#Now, let's implement it in the proper way!
class KaraokeSong < Song
   def to_s
      super + ". Lyrics: [#{@lyrics}]"
   end
end

#This also workz!
Song1.to_s
