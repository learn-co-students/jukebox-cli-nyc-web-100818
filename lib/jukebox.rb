songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapman - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(array)
  song_list = ""
  array.each_with_index do |songs, index|
    song_list += "#{index + 1}. #{songs}\n"
  end
  puts song_list
end


def play(array)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  array.each_with_index do |song, index|
    song_num = index + 1
     if user_input == song
       puts "Playing #{song}"
     elsif user_input == song_num.to_s
       puts "Playing #{song}"
     else 
       puts "Invalid input, please try again"
     end 
  end 
end 

def exit_jukebox
    puts "Goodbye"
end 

def run(array)
  help
  puts "Please enter a command:"
  user_input = gets.chomp 
  if user_input == "help"
    help
  elsif user_input == "list"
    list(array)
  elsif user_input == "play"
    play(array)
  elsif user_input == "exit"
  exit_jukebox
  else
    run
  end
end 



