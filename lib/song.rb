class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def Song.create
    song = Song.new
    song.save
    song
  end
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.new_by_name(name)
    song = Song.new
    song.name = name
    song
  end
  
  def self.create_by_name(name)
    song = Song.new 
    song.name = name
    song.save
    song
  end
  
  def self.find_by_name(name)
    Song.all.find{|song| song.name == name}
  end
  
  def self.find_or_create_by_name(name)
    if Song.find_by_name(name)
      Song.find_by_name (name)
    else 
      Song.create_by_name(name)
    end
  end
  
  def self.alphabetical
<<<<<<< HEAD
    Song.all.sort_by{|song| song.name}
  end
  
  
  def self.new_from_filename(file_name)
    data = file_name.split(/[-.]/) 
    artist_name = data[0]
    name = data[1]
  
    song = Song.new
    song.name = name.strip
    song.artist_name = artist_name.strip
    song
  end
  
  def self.create_from_filename(file_name)
    data = file_name.split(/[-.]/) 
    artist_name = data[0]
    name = data[1]
  
    song = Song.new
    song.name = name.strip
    song.artist_name = artist_name.strip
    song.save
  end
  
  def self.destroy_all
    self.all.clear
  end
  
=======
    new_array = Song.all.sort
    new_array
  end

>>>>>>> 3ea1c6eb5fddab368ae549b5beecc1373b84af08
end
