# add 2 items 'Dino' and 'Hoppy' to existing array
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.concat( [ "Dino", "Hoppy" ])
# alternatives: flintstones.concat(%w(Dino, Hoppy))
#               flintstones.push("Dino").push("Hoppy")