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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each do |song|
    puts song
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp

  if songs.include?(user_response)
    puts user_response
  elsif (1..songs.length).include?(user_response.to_i)
    puts songs[(user_response.to_i)-1]
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
puts "Goodbye"
end

def run(songs)
  help

  loop do
    puts "Please enter a command:"
    user_response = gets.chomp
      if user_response == "list"
        list
      elsif user_response == "play"
        play
      elsif user_response == "help"
        help
      end
      if user_response == "exit"
        exit_jukebox
        break
      end
        end
end
