class Dog
  # code goes here
  attr_reader :name
  attr_accessor :owner, :mood, :user
  @@all = []
  def initialize (name, owner, mood ="nervous")
    @name = name
    @owner = owner
    @mood = mood
    # @user = user
    @@all << self
  end
  def self.all
    @@all

    
  end
end