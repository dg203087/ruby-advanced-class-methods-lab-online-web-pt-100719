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
  
  def self.new_by_name(song_name) # takes in a string name of song
    song = self.new 
    song.name = song_name #sets name of song to the string 
    song # returns name of song 
  end
  
  def self.create_by_name(song_name) # takes in a string name of song
    song = self.new
    song.name = song_name
    @@all << song #saves all new instances in class variable
    song # returns the instance 
  end
  
  def self.find_by_name(song_name) # takes in a string name of song
    @@all.find{ |x| x.name == song_name} #returns matching instance of the song 
  end
  
  def self.find_or_create_by_name(song_name)
    #if self.find_by_name(name) == nil 
    #  self.create_by_name(name)
    #else
    #  self.find_by_name(name)
    #end
    #refactor: do this (if it is true) or that (if the first is not true)
    self.find_by_name(song_name) || self.create_by_name(song_name)
  end 
  
  def self.alphbetical
    @@all.sort_by(a...z)
    
  end 
  
#binding.pry
end