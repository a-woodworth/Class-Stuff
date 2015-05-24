module Character
  def role
    "Infantry"
  end

  def energy
    100
  end

  def lives
    5
  end
end

module Lane
  def shoot
    true
  end
end

module Jungle
  def sword_attack
    true
  end
end

class Dwarf
  extend Character
  include Jungle
end

class Elf
  extend Character
  include Lane
end


d = Dwarf.new
k = Elf.new

puts d.sword_attack
puts k.shoot
puts Dwarf.energy
puts Dwarf.lives
