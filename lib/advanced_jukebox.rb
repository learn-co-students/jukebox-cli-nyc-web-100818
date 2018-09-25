
def help
  puts "\nI accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(my_songs)
  i = 1
  my_songs.each do |song,path|
    puts "#{i}. #{song}"
    i += 1
  end
end


def play(my_songs)
  puts "\nPlease enter a song name:"
  input = gets.chomp
  done = false
  my_songs.each do |song,path|
    if song.downcase == input.downcase && done == false
      puts "\nPlaying #{input}"
      puts "#{path}"
      done = true
      system "open #{path}"
    end
  end
  puts "\nInvalid input, please try again" if done == false
end



def exit_jukebox
  puts "\nGoodbye"
end

def run(songs)
  input = ""
  help
  while input != "exit"
    puts "\nPlease enter a command:"
    input = gets.chomp
    case input
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    else
      "Invalid input"
    end
  end
  exit_jukebox
end
