def help
  puts "\nI accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "\nPlease enter a song name or number:"
  input = gets.chomp
  done = false
  songs.each do |song|
    if song.downcase == input.downcase && done == false
      puts "\nPlaying #{input}"
      done = true
    end
  end
  if (1..songs.length).include?(input.to_i)
    input = input.to_i - 1
    puts "\nPlaying #{songs[(input)]}"
    done = true
  end
  puts "\nInvalid input, please try again" if done == false
end

def list(songs)
  i = 0
  songs.each do |song|
    i += 1
    puts "#{i}. #{song}"
  end
end

def exit_jukebox
  puts "\nGoodbye"
end

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
