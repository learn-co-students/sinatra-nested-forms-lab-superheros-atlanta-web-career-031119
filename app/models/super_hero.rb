class SuperHero
    attr_reader :name, :power, :bio

    @@super_heroes = []

    def initialize(args)
        @name = args[:name]
        @power = args[:power]
        @bio = args[:bio]
        @@super_heroes << self
    end

    def self.all
        @@super_heroes
    end
end