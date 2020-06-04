class Owner
	attr_reader :name, :species

	@@all = []

	def initialize(name, species = "human")
		@name = name
		@species = species
		@@all << self
	end

	def say_species
		"I am a #{self.species}."
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

end