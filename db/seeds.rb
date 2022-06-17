puts "🌱 Seeding spices..."

# Seed your database here


the_black_pearl = Ship.create(name: "The Black Pearl", ship_type: "Galleon", ranking: "Armoured - second deadliest", status: "Active")
queen_annes_revenge = Ship.create(name: "Queen Anne's Revenge", ship_type: "Frigate", ranking: "Deadliest", status: "Active")
adventure_galley = Ship.create(name: "Adventure Galley", ship_type: "Oared Frigate", ranking: "Armoured - most maneuverable", status: "Active")
jolly_roger = Ship.create(name: "Jolly Roger", ship_type: "Square Rigger", ranking: "Flying", status: "Active")
the_william = Ship.create(name: "The William", ship_type: "Sloop", ranking: "Armoured", status: "Active")



blackbeard = Pirate.create(name: "Blackbeard", title: "Captain", ship_id: 2, ship_name: "Queen Anne's Revenge")
captain_kidd = Pirate.create(name: "Captain Kidd", title: "Captain", ship_id: 3, ship_name: "Adventure Galley")
jack_sparrow = Pirate.create(name: "Jack Sparrow", title: "Captain", ship_id: 1, ship_name: "The Black Pearl")
kit = Pirate.create(name: "Kit", title: "First Mate", ship_id: 1, ship_name: "The Black Pearl" )
anne_bonny = Pirate.create(name: "Anne Bonny", title: "Pirate Queen", ship_id: 4, ship_name: "Jolly Roger")
calico_jack = Pirate.create(name: "Calico Jack", title: "Captain", ship_id: 5, ship_name: "The William")
puts "✅ Done seeding!"
