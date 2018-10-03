require 'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
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
#binding.pry


def play(songs_array)
  puts "Please enter a song name or number:"
  users_input = gets.chomp
  if songs_array.include?(users_input)
    puts "Playing #{users_input}"
  elsif (1...9).to_a.include?(users_input.to_i)
    puts "Playing #{songs_array[users_input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

  def list(songs)
    songs.each_with_index do |songs, index|
    puts "#{index+1}. #{songs}"
    end
  end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  run = true
  while run
  puts "Please enter a command:"
  users_input = gets.chomp.downcase
  case users_input
  when 'help'
    help
  when 'list'
    list(songs)
  when 'play'
    play(songs_array)
  when 'exit'
  exit_jukebox
  break
    end
  end
end
