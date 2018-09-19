def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index{|song,index|
    puts "#{index+1}. #{song}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if input.to_i >=1 && input.to_i <= songs.length
      puts "Playing #{songs[input.to_i - 1]}"
  elsif songs.any? {|song| song == input}
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  running = true
  while running
    puts "Please enter a command:"
    input = gets.chomp.downcase
    case input
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
      when "exit"
        exit_jukebox
        running = false
      else
        puts "Invalid input"
    end
  end
end
