class Song
  attr_accessor :name, :artist_name
  @@song = []

  def self.song
    @@song
  end

  def save
    self.class.song << self
  end

  def create
    self.class.song << self
  end

  def initialize(name)
    @name = name
    @@song << self
  end

  def self.find_by_name(name)
    @@song.detect{|person| person.name == name}
  end
end
