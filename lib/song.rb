class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create(name)
    song = self.new
    song.name = name
    @@all << song 
  end

  # def initialize(name)
  #   @name = name
  #   @@song << self
  # end
  # 
  # def self.find_by_name(name)
  #   @@song.detect{|person| person.name == name}
  # end
end
