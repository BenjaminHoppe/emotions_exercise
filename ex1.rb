class Person

 def initialize(name, emotions)
   @name = name
   @emotions = emotions
 end
 #Readers

 def name
   return @name
 end

 def emotions
   return @emotions
 end

 # End Readers

 def emotion_describer
   @emotions.each do | feeling, level |
     if level == 3
       value = "high"
     elsif level == 2
       value = "medium"
     elsif level == 1
       value = "low"
     else
       value = "Not sure"
     end
        puts "I am feeling a #{value} amount of #{feeling}."
   end
  end
end

emotions = {
  happy: 2,
  sad: 2,
  exhausted: 2
}

ben = Person.new("Benjamin", emotions)
  # {happy: 1, sad: 3, exhausted: 2}

# puts ben.name
# puts ben.emotions
puts ben.emotion_describer
