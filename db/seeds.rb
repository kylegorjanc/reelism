# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

projects = Project.create([
	{title:"The Other Guys", 				media_type:"Feature", 				youtube_id:"SSv4I8BAD7s", role:"Stunt Rigger", 				description:"two characters jump off a Manhattan rooftop in a final act of heroism."},
	{title:"Jessica Jones", 				media_type:"Television Series", 	youtube_id:"nWHUjuJ8zxE", role:"Director of Photography",  	description:"Television show for the Netflix Network based on the 'Jessica Jones' Marvel comic."},
	{title:"Lipton-Be More Tea (Muppets)", 	media_type:"Commercial", 			youtube_id:"jGUTTgLT51A", role:"Leading Frog", 				description:"Everyone in New York has turned into an Animal, but Kermit can handle it, thanks to his tea."}
	])
