

character_stats_category = ['strength', 'intelligence', 'wisdom', 'dexterity', 'constitution', 'looks', 'chrisma']

character_stats = {}

#total 
def roll
	rand(1..6)
end

def three_rolls
	x = []
	3.times{x << roll}
	x.inject(:+)
end

character_stats_category.each do |x|
	character_stats[x] = three_rolls
end


def dwarf(arg)
	dwarf_stats = arg.clone
	dwarf_stats["constitution"] += 4 
	dwarf_stats["looks"] -= 2 
	dwarf_stats["chrisma"] -=2  
	puts dwarf_stats
	print "dwarf total points: "
	puts dwarf_stats.values.inject(:+)
end

def elf(arg)
	elf_stats = arg.clone
	elf_stats["strength"] -= 2
	elf_stats["dexterity"] += 2
	elf_stats["constitution"] -= 4 
	elf_stats["looks"] += 2 
	elf_stats["chrisma"] += 2 
	puts elf_stats
	print "elf total points: "
	puts elf_stats.values.inject(:+)
end

def gnome(arg)
	gnome_stats = arg.clone
	gnome_stats["strength"] -= 2
	gnome_stats["dexterity"] +=2
	gnome_stats["looks"] -= 2 
	gnome_stats["chrisma"] += 2 
	puts gnome_stats
	print "gnome total points: "
	puts gnome_stats.values.inject(:+)
end

def gnome_titan(arg)
	gnome_titan_stats = arg.clone
	gnome_titan_stats["strength"] -= 1
	gnome_titan_stats["constitution"] += 2 
	gnome_titan_stats["chrisma"] -= 1
	puts gnome_titan_stats
	print "gnome_titan total points: "
	puts gnome_titan_stats.values.inject(:+)
end

def grel(arg)
	grel_stats = arg.clone
	grel_stats["intelligence"] -= 1
	grel_stats["dexterity"] += 1
	grel_stats["looks"] -= 1 
	puts grel_stats
	print "grel total points: "
	puts grel_stats.values.inject(:+)
end

def half_elf(arg)
	half_elf_stats = arg.clone
	half_elf_stats["strength"] -= 1
	half_elf_stats["dexterity"] += 1
	half_elf_stats["constitution"] -= 2 
	half_elf_stats["looks"] += 1 
	half_elf_stats["chrisma"] += 1 
	puts half_elf_stats
	print "half_elf total points: "
	puts half_elf_stats.values.inject(:+)
end

def half_hobgoblin(arg)
	half_hobgoblin_stats = arg.clone
	half_hobgoblin_stats["dexterity"] += 1
	half_hobgoblin_stats["looks"] -= 2 
	half_hobgoblin_stats["chrisma"] -= 1 
	puts half_hobgoblin_stats
	print "half_hobgoblin total points: "
	puts half_hobgoblin_stats.values.inject(:+)
end

def half_orc(arg)
	half_orc_stats = arg.clone
	half_orc_stats["strength"] += 2
	half_orc_stats["intelligence"] -= 2
	half_orc_stats["constitution"] += 2
	half_orc_stats["wisdom"] -= 3
	half_orc_stats["looks"] -= 3
	half_orc_stats["chrisma"] -= 3
	puts half_orc_stats
	print "half_orc total points: "
	puts half_orc_stats.values.inject(:+)	
end

def halfling(arg)
	halfling_stats = arg.clone
	halfling_stats["strength"] -= 4
	halfling_stats["wisdom"] += 1 
	halfling_stats["dexterity"] += 2
	halfling_stats["constitution"] += 1
	puts halfling_stats
	print "halfling total points: "
	puts halfling_stats.values.inject(:+)
end
puts "Please Input a Character Name:"
character_name = gets.chomp



puts character_stats
print "total points: "
puts character_stats.values.inject(:+)

while character_stats.values.inject(:+) < 79
	puts "Your total point value is less than 79, would you like to re-roll? (yes or no)"
	answer = gets.chomp
	if answer == "yes"
		character_stats_category.each do |x|
			character_stats[x] = three_rolls
		end
		puts character_stats
		puts character_stats.values.inject(:+)

	elsif answer == "no"
		puts "Pick a Race? (dwarf, elf, gnome, gnome_titan, grel, half_elf, half_hobgoblin, half_orc, halfing)"
		race = gets.chomp
		if race == "dwarf"
			puts dwarf(character_stats)
		elsif race == "elf"
			puts elf(character_stats)
		elsif race == "gnome"
			puts gnome(character_stats)
		elsif race == "gnome_titan"
			puts gnome_titan(character_stats)
		elsif race == "grel"
			puts grel(character_stats)
		elsif race == "half_elf"
			puts half_elf(character_stats)
		elsif race == "half_hobgoblin"
			puts half_hobgoblin(character_stats)
		elsif race == "half_orc"
			puts half_orc(character_stats)
		elsif race == "halfling"
			puts halfling(character_stats)
		else
			puts "Please choose a race from the list above"
			race = gets.chomp
		end
	else
		puts "please put in answer yes or no."
	end
	end
	
  puts "Pick a Race? (dwarf, elf, gnome, gnome_titan, grel, half_elf, half_hobgoblin, half_orc, halfing)"
  race = gets.chomp
  if race == "dwarf"
  	puts dwarf(character_stats)
  elsif race == "elf"
  	puts elf(character_stats)
  elsif race == "gnome"
  	puts gnome(character_stats)
  elsif race == "gnome_titan"
  	puts gnome_titan(character_stats)
  elsif race == "grel"
  	puts grel(character_stats)
  elsif race == "half_elf"
  	puts half_elf(character_stats)
  elsif race == "half_hobgoblin"
  	puts half_hobgoblin(character_stats)
  elsif race == "half_orc"
  	puts half_orc(character_stats)
  elsif race == "halfling"
  	puts halfling(character_stats)
  else
  	puts "Please choose a race from the list above"
  	race = gets.chomp
  end

 puts "Your character: " + character_name















