# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#puts "limpando o banco de dados"


Item.destroy_all
User.destroy_all

#puts "limpo"





users = User.create!([

  { username: 'jane_smith', email: 'jane.smith@example.com', password: 'password123' },
  { username: 'max_payne', email: 'max.payne@example.com', password: 'password123' },
  { username: 'lucas_williams', email: 'lucas.williams@example.com', password: 'password123' },
  { username: 'emily_brown', email: 'emily.brown@example.com', password: 'password123' },
  { username: 'david_clark', email: 'david.clark@example.com', password: 'password123' },
  { username: 'sophia_johnson', email: 'sophia.johnson@example.com', password: 'password123' },
  { username: 'michael_davis', email: 'michael.davis@example.com', password: 'password123' },
  { username: 'olivia_martin', email: 'olivia.martin@example.com', password: 'password123' },
  { username: 'daniel_thomas', email: 'daniel.thomas@example.com', password: 'password123' }
])

puts "users created"


# Creating items
# db/seeds.rb


# Create Items (50 Items)
items = Item.create([

{ name: 'MISC Freelancer', price: 125000.00, description: 'A versatile medium-sized freighter used for cargo transport, exploration, and combat. Known for its durability and adaptability.', categories: 'Spaceships' },
  { name: 'Razor XR', price: 350000.00, description: 'A sleek, fast racing ship with a focus on agility and speed. It is designed for high-performance in the competitive racing circuit.', categories: 'Spaceships' },
  { name: 'Shubin Mining Helmet', price: 500.00, description: 'A helmet designed for mining operations, featuring a built-in HUD, oxygen filtration, and advanced communication systems for hazardous environments.', categories: 'Tools' },
  { name: 'Multi-Tool', price: 2500.00, description: 'A highly versatile tool used by both civilians and military personnel. It can be configured with a variety of attachments for different tasks like mining, repairing, and defense.', categories: 'Tools' },
  { name: 'Quantum Drive', price: 50000.00, description: 'A crucial propulsion system for long-distance space travel, enabling faster-than-light (FTL) travel to distant star systems and planets.', categories: 'Spaceships' },
  { name: 'Nomad', price: 175000.00, description: 'A rugged, multi-role spacecraft designed for exploration and cargo hauling. It is perfect for long-term missions in deep space, offering a modular design for various configurations.', categories: 'Spaceships' },
  { name: 'Hydrogen Fuel Tank', price: 2000.00, description: 'A vital consumable used to fuel spacecraft with hydrogen, enabling efficient propulsion for longer trips in space. Can be refilled at stations or in-flight.', categories: 'Consumables' },
  { name: 'Slamfire Shotgun', price: 3500.00, description: 'A powerful close-range shotgun used for combat situations. It’s known for its devastating impact and rugged reliability in zero-gravity environments.', categories: 'Tools' },
  { name: 'Personal Energy Shield', price: 1500.00, description: 'A portable energy shield that provides personal protection in combat situations. It is designed to absorb damage and protect the wearer in hostile environments.', categories: 'Tools' },
  { name: 'Caterpillar', price: 320000.00, description: 'A heavy-duty cargo transport ship designed for massive payloads. With its modular design, it can be customized for a wide variety of industrial and military roles.', categories: 'Spaceships' },
  { name: 'Aegis Avenger', price: 100000.00, description: 'A versatile, light fighter ship designed for combat and rapid response. Compact and agile.', categories: 'Spaceships' },
  { name: 'Vanguard Warden', price: 250000.00, description: 'A multi-role fighter designed for both offense and defense with long-range capabilities.', categories: 'Spaceships' },
  { name: 'MISC Starfarer', price: 275000.00, description: 'A large tanker ship designed to transport fuel across the galaxy, with advanced refueling systems.', categories: 'Spaceships' },
  { name: 'Consolidated Outland Nomad', price: 180000.00, description: 'A rugged, multi-role ship designed for exploration and cargo hauling with a modular design.', categories: 'Spaceships' },
  { name: 'Orison Lunar Armor', price: 1000.00, description: 'Lightweight, comfortable armor designed for off-planet environments, ideal for traveling to new moons and planets.', categories: 'Tools' },
  { name: 'Greycat ROC', price: 40000.00, description: 'A rugged, mining vehicle for surface mining on planets and moons. Equipped with advanced mining tools.', categories: 'Tools' },
  { name: 'Melee Knife', price: 500.00, description: 'A combat knife useful in close-range defense and survival situations in hostile environments.', categories: 'Tools' },
  { name: 'Starlifter Ship', price: 450000.00, description: 'Heavy-duty transport ship with cargo and crew accommodations for long-haul space missions.', categories: 'Spaceships' },
  { name: 'P8-Pistol', price: 5000.00, description: 'A semi-automatic handgun used for personal defense in zero-gravity environments.', categories: 'Tools' },
  { name: 'Cutter', price: 150000.00, description: 'A multi-role spaceship built for exploration, light combat, and long-distance cargo hauling.', categories: 'Spaceships' },
  { name: 'EVA Suit', price: 7000.00, description: 'An extravehicular activity suit designed for working in space or low-gravity environments.', categories: 'Tools' },
  { name: 'Melee Energy Sword', price: 8000.00, description: 'A close-range combat weapon that uses plasma technology to inflict devastating damage.', categories: 'Tools' },
  { name: 'Nox K&M Racer', price: 380000.00, description: 'An ultra-lightweight racing ship designed for high-speed maneuvers in competitive space races.', categories: 'Spaceships' },
  { name: 'Rucksack', price: 300.00, description: 'A lightweight and durable backpack for carrying essential tools and supplies during missions.', categories: 'Tools' },
  { name: 'Fuel Intake System', price: 10000.00, description: 'An advanced fuel intake system for fueling large ships in space and on planetary surfaces.', categories: 'Tools' },
  { name: 'Drake Herald', price: 225000.00, description: 'A highly specialized ship used for data running and data encryption during sensitive missions.', categories: 'Spaceships' },
  { name: 'Quantum Interdiction Field Generator', price: 50000.00, description: 'A device that creates quantum interdiction fields to prevent ships from escaping into quantum travel.', categories: 'Tools' },
  { name: 'C2 Hercules Starlifter', price: 400000.00, description: 'A large cargo ship used for transporting heavy freight and materials across vast distances.', categories: 'Spaceships' },
  { name: 'MISC Freelancer MAX', price: 150000.00, description: 'A modified version of the Freelancer with more cargo capacity and enhanced power systems.', categories: 'Spaceships' },
  { name: 'Mantis', price: 350000.00, description: 'A specialized interceptor for taking down criminal ships in high-speed pursuits.', categories: 'Spaceships' },
  { name: 'Valkyrie', price: 550000.00, description: 'A combat-focused ship designed for carrying out military missions with heavy weaponry and troop transport.', categories: 'Spaceships' },
  { name: 'Ursula Suit', price: 6000.00, description: 'A tactical suit designed for highly dangerous, high-altitude military operations.', categories: 'Tools' },
  { name: 'Mining Laser', price: 1200.00, description: 'An advanced mining tool designed to extract valuable minerals from asteroids and planetary surfaces.', categories: 'Tools' },
  { name: 'Crusader Mercury Star Runner', price: 350000.00, description: 'A mid-sized multi-role ship designed for exploration and medium-range cargo hauling.', categories: 'Spaceships' },
  { name: 'Jump Point Scanner', price: 8000.00, description: 'A tool used to scan and identify jump points for quantum travel in unexplored regions of space.', categories: 'Tools' },
  { name: 'Exotic Spear', price: 10000.00, description: 'A rare and powerful weapon for use in hostile encounters, utilizing advanced alien technology.', categories: 'Tools' },
  { name: 'Banu Defender', price: 200000.00, description: 'A compact and agile fighter ship favored by the Banu people for defense and rapid response.', categories: 'Spaceships' },
  { name: 'Drake Cutlass Black', price: 275000.00, description: 'A heavily armed combat ship used for mercenary and defensive operations in hostile environments.', categories: 'Spaceships' },
  { name: 'Consolidated Outland Pioneer', price: 200000.00, description: 'An all-terrain vehicle used for surveying and resource extraction on planetary surfaces.', categories: 'Tools' },
  { name: 'Bounty Hunter Armor', price: 5000.00, description: 'Tactical combat armor designed for bounty hunting missions, providing durability and protection.', categories: 'Tools' },
  { name: 'Vanduul Scythe', price: 700000.00, description: 'A large, menacing alien ship used by the Vanduul for both space and planetary warfare.', categories: 'Spaceships' },
  { name: 'Drake Dragonfly', price: 120000.00, description: 'A small, all-terrain vehicle designed for exploration and combat on planets with rugged terrains.', categories: 'Spaceships' },
  { name: 'Salvage Laser', price: 4500.00, description: 'A tool designed for extracting valuable materials from wreckage in space and on planets.', categories: 'Tools' },

])

puts "items created"
#users.each do |user|
  # Assign 3 random items to each user (you can adjust the number)
  #random_items = items.sample(3)
  #random_items.each do |item|
    #user.items.create!(name: item.name, price: item.price, description: item.description, categories: item.categories)
  #end
#end




#users.each do |user|
 #  Randomly assign items to users
 # user.items << items.sample(3)  # Each user gets 3 random items
#end
