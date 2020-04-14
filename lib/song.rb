class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    new_song = Song.new
    self.all << new_song
    new_song
  end

  def self.new_by_name(name)
    new_song = Song.new
    new_song.name = name
    new_song
  end

  def self.create_by_name(name)
    new_song = Song.new
    new_song.name = name
    self.all << new_song
    new_song
  end

  def self.find_by_name(name)
    self.all.each do |songs|
      if songs.name == name
        return songs
      end
    end
    return nil
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name) == name
      return self.find_by_name(name)

    end
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
