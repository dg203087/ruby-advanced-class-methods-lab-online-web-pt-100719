require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create #class constructor
    song = self.new # initializes a new song
    @@all << song # saves it to the class variable 
    song # returns the instance 
  end 
  
  def self.new_by_name(song_name)
  
  
#binding.pry
end