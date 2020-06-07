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


tf2 = Game.new()
tf2.title = "Titanfall 3"
tf2.genre = "1st Person Shooter"
tf2.developer = "Respawn Entertainment"
tf2.publisher = "EA"
tf2.description = "The best game ever made. There's wall running super soldiers, inter-dimensional traveling, HECKING GIANT WAR ROBOTS!!!"
tf2.user_id = titan_bt.id
tf2.console_id = ps4_bt.id
tf2.save