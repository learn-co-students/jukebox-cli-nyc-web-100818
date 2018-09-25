songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts   "I accept the following commands:
        - help : displays this help message
        - list : displays a list of songs you can play
        - play : lets you choose a song to play
        - exit : exits this program"
end

def list(songs)
  songs.each_with_index {|song, i| puts "#{i+1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number: "
  user_response = gets.chomp
  songs_list = list(songs) # setting a var equal to the method list

  songs_list.each do |song|
    if songs.include?(user_response) ||  user_response.to_i == (1..9)
      puts "Playing #{user_response}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do # keep going until exit breaks us out 
    puts "Please enter a command:"
    command = gets.chomp

    case command.downcase
      when 'list'
        list(songs)
      when 'play'
        list(songs) # show songs to play
        play(songs) # then play
      when 'help'
        help
      when 'exit'
        exit_jukebox
        break
      else
        help
    end
  end
end
