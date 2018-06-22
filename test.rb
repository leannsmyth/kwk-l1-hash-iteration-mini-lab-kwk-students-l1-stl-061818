class Hsm
    def initialize(lyric, song)
        @lyric = lyric
        @song = song
    end
    
    
    def lyric
        @lyric
    end
        
    def song
        @song
    end
end

class Quizzer
    @@lyrics = [ ]
    
    def self.add_song_lyric(song_lyric)
      @@lyrics << song_lyric
  end
  
  def self.quiz_song_lyric(song_lyric)
      puts "what song does this lyric match? #{song_lyric.lyric}"
      
      answer = gets.chomp
      
      if answer == song_lyric.song
          puts "correct :)"
      else
          puts "fake fan, actually it's #{song_lyric.song}"
      end
  end
  
  def self.start_quiz
      @lyrics.each do |song_lyric|
          self.quiz_song_lyric(song_lyric)
      end
      
      puts "Quiz finished"
  end
  end
  
  Quizzer.add_song_lyric(Hsm.new("It's time to show how to be a superhero!", "The Boys are Back"))
  Quizzer.add_song_lyric(Hsm.new("We make each other stong", "We're all in this together"))
  Quizzer.add_song_lyric(Hsm.new("No more waking up at 6 am", "What time is it?"))
  Quizzer.add_song_lyric(Hsm.new("Hey batter batter, hey batter batter swing!", "I dont Dance"))
  Quizzer.add_song_lyric(Hsm.new("Stick to the stuff you know", "Stick to the status Quo'"))
  
  Quizzer.quiz_song_lyric(Hsm.new("It's time to show how to be a superhero!", "The Boys are Back"))
  Quizzer.quiz_song_lyric(Hsm.new("We make each other stong", "We're all in this together"))
  Quizzer.quiz_song_lyric(Hsm.new("No more waking up at 6 am", "What time is it?"))
  Quizzer.quiz_song_lyric(Hsm.new("Hey batter batter, hey batter batter swing!", "I dont Dance"))
  Quizzer.quiz_song_lyric(Hsm.new("Stick to the stuff you know", "Stick to the status Quo"))
  
  Quizzer.start_quiz
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
    