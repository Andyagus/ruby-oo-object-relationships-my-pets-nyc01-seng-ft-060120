require 'pry'


class Owner
	attr_reader :name, :species

	@@all = []

	def initialize(name, species = "human")
		@name = name
		@species = species
		@@all << self
	end

	def say_species 
		p "I am a #{self.species}."
	end

	def self.all 
		@@all
	end

	def self.count
		@@all.count
	end

	def self.reset_all 
		@@all = []
	end


	def cats
		Cat.all.select {|cats| cats.owner == self}
	end


	def dogs
		Dog.all.select {|dogs| dogs.owner == self}
	end


	def buy_cat(name, owner=self)
		Cat.new(name, owner)
	end

	def buy_dog(name, owner=self)
		Dog.new(name, owner)
	end

      #walks the dogs which makes the dogs' moods happy (FAILED - 1)
	def walk_dogs
		Dog.all.map{|dogs| dogs.mood = "happy"}
	end

	def feed_cats
		Cat.all.map{|dogs| dogs.mood = "happy"}
	end


	#can sell all its pets, which makes them nervous (FAILED - 1)

	def sell_pets
		@pets = Dog.all + Cat.all
		@pets.map{|pet| pet.mood = "nervous"}

		@pets.map{|pet| pet.owner = nil}
	end

	def list_pets
		"I have #{cats.count} dog(s), and #{dogs.count} cat(s)."
	end


end



# binding.pry