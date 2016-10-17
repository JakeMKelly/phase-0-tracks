require 'sqlite3'

db = SQLite3::Database.new("jukebox.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS jukebox(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    genre VARCHAR(255),
    task VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)

def load_jukebox(db, name, genre, task)
  puts "You just added #{name} under the genre #{genre}, good to listen to while #{task}."
  db.execute("INSERT INTO jukebox (name, genre, task) VALUES (?, ?, ?)", [name, genre, task])
end

def view_jukebox(db)
  group_list = db.execute("SELECT * FROM jukebox")
  group_list.each do |primary, name, genre, task|
    puts "You have '#{name}' listed as #{genre}, good for listening to while #{task}."
  end
end

def call_artist_name(db, name)
  artist = db.execute("SELECT * FROM jukebox WHERE name=?", [name])
  artist.each do |primary, name, genre, task|
    puts "You have '#{name}' listed as #{genre}, good for listening to while #{task}."
  end
end

def call_artist_genre(db, genre)
  artist = db.execute("SELECT * FROM jukebox WHERE genre=?", [genre])
  artist.each do |primary, name|
      puts "In the mood for #{genre}, huh? Try playing some #{name}." 
  end
end

def call_artist_task(db, task)
 artist = db.execute("SELECT * FROM jukebox WHERE task=?", [task])
  artist.each do |primary, name, genre, task|
      puts "You might be in the mood for #{name}, whom you previously listed as good #{task} music." 
  end
end

def choose_direction(usage)
  until usage == 'add' || usage == 'browse'
  puts "Sorry, I didn't understand. To add an artist, type 'add'. If you want to browse artists, type 'browse'."
  usage = gets.chomp
  break if  usage == 'add' || usage == 'browse'
  end 
  if usage == 'add'
   true
  elsif usage == 'browse'
   false
  else
  end
end

# def similar_artists(db, known_artist)
#   p artist = db.execute("SELECT * FROM jukebox WHERE name=?", [known_artist])
#   p other_artists = db.execute("SELECT * FROM jukebox WHERE name!=?", [known_artist])
#   other_artists.each do |artist_row|
#     artist_row.each do |id, other_name, genre, task|
#       if artist.each.include?("#{genre}")
#         puts "#{artist_row[other_name]}"
#       elsif artist.each.include?("#{task}")
#         puts "#{artist_row[other_name]}"
#       else
#         puts "Sorry, I couldn't find anyone similar. Try adding more!"
#       end
#     end
#   end
# end


# User Interface

puts "-" * 25 
puts "\n"
puts "Jukebox is on!"
puts "\n"
puts "-" * 25
puts "What would you like to do today?"
valid_selection = false
puts "To add an artist, type 'add'. If you want to browse artists, type 'browse'."
usage = gets.chomp

if choose_direction(usage) == true
  puts "Great, what's the artist/group's name?"
  artist_name = gets.chomp
  puts "What genre are they?"
  artist_genre = gets.chomp
  puts "What's the best activity to do while listening?"
  artist_task = gets.chomp
  load_jukebox(db, artist_name, artist_genre, artist_task)
else
  puts "Let's pick someone. Do you want to browse by genre, activity or name? If you want to see your entire library, just type 'library'."
    browse_key = gets.chomp
  if browse_key == 'genre'
    puts "OK, let me find everyone in that category. Which genre are you in the mood for?"
    preferred_genre = gets.chomp
    call_artist_genre(db, preferred_genre)
  elsif browse_key == 'activity'
    puts "OK, what's the activity?"
    preferred_activity = gets.chomp
    call_artist_task(db, preferred_activity)
  elsif browse_key == 'name'
    puts "OK, what's the artist's or band's name?"
    preferred_artist = gets.chomp
    call_artist_name(db, preferred_artist)
    # puts "Would you like some suggestions related to #{preferred_artist}?"
    # related_artists = gets.chomp
    #   if related_artists == 'yes'
    #     similar_artists(db, preferred_artist)
    #   else
    #     puts "OK, maybe next time."
    #   end
  elsif browse_key == 'library'
    view_jukebox(db)
  else
    puts "Hmm. No matches found. Try adding someone who fits that description!"
  end
end
