# data used for testing the app
dovahkiin = User.create(username: "dragonborn", password: "skyrim4life", email: "dovah@kiin.com")
titan_bt  = User.create(username: "bt-7274", password: "prepfortitanfall", email: "bt@imc.com")


switch_dov = Console.new
switch_dov.name = "Switch"
switch_dov.edition = "Lite"
switch_dov.brand = "Switch"
switch_dov.company = "Nintendo"
switch_dov.user_id = dovahkiin.id
switch_dov.save

wii_dov = Console.new()
wii_dov.name = "Wii"
wii_dov.edition = "Dragon Edition"
wii_dov.brand = "Wii"
wii_dov.company = "Nintendo"
wii_dov.user_id = dovahkiin.id
wii_dov.save


xbox_one_bt = Console.new()
xbox_one_bt.name = "Xbox One"
xbox_one_bt.edition = "Slim"
xbox_one_bt.brand = "Xbox"
xbox_one_bt.company = "Microsoft"
xbox_one_bt.user_id = titan_bt.id
xbox_one_bt.save

ps4_bt = Console.new()
ps4_bt.name = "Playstation 4"
ps4_bt.edition = "Standard"
ps4_bt.brand = "Playstation"
ps4_bt.company = "Sony"
ps4_bt.user_id = titan_bt.id
ps4_bt.save


ac = Game.new()
ac.title = "Animal Crossing"
ac.genre = "Casual"
ac.developer = "Nintendo"
ac.publisher = "Nintendo"
ac.description = "This is the chillest game to have ever been made."
ac.user_id = dovahkiin.id
ac.console_id = switch_dov.id
ac.save

skyrim = Game.new()
skyrim.title = "Skyrim 2"
skyrim.genre = "RPG"
skyrim.developer = "Bethesda Game Studios"
skyrim.publisher = "Bethesda"
skyrim.description = "Are you ready to buy skyrim for the 20th time? This isn't a sequel to skyrim, this is just skyrim with a bunch of mods."
skyrim.user_id = dovahkiin.id
skyrim.console_id = switch_dov.id
skyrim.save

smg = Game.new()
smg.title = "Super Mario Galaxy"
smg.genre = "3D Platformer"
smg.developer = "Nintendo"
smg.publisher = "Nintendo"
smg.description = "One of the best mario games to have ever come out. Go on a journey to outer space save the mushroom kingdom!"
smg.user_id = dovahkiin.id
smg.console_id = switch_dov.id
smg.save


tf2 = Game.new()
tf2.title = "Titanfall 3"
tf2.genre = "1st Person Shooter"
tf2.developer = "Respawn Entertainment"
tf2.publisher = "EA"
tf2.description = "The best game ever made. There's wall running super soldiers, inter-dimensional traveling, HECKING GIANT WAR ROBOTS!!!"
tf2.user_id = titan_bt.id
tf2.console_id = ps4_bt.id
tf2.save

cod = Game.new
cod.title = "Call of Duty: Modern Warfare"
cod.genre = "1st Person Shooter"
cod.developer = "Infinity Ward"
cod.publisher = "Activision"
cod.description = "The ultimate pew pew game. Pew pew your friends! Pew pew your enemies! Pew pew everything!"
cod.user_id = titan_bt.id
cod.console_id = xbox_one_bt.id
cod.save

halo = Game.new
halo.title = "Halo 5: Guardians"
halo.genre = "1st Person Shooter"
halo.developer = "343 Industries"
halo.publisher = "Microsoft"
halo.description = "This game isn't so good."
halo.user_id = titan_bt.id
halo.console_id = xbox_one_bt.id
halo.save