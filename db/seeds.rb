# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
rooms = File.open(File.join(Rails.root, 'db', 'document.json')).read
rooms_json = JSON.parse(rooms)
Room.delete_all
Facility.delete_all

rooms_json.each do |r|
  room = Room.create(name: r[1]["nume"],
              hotel: r[1]["hotel"],
              link: r[1]["link"],
              lat: r[1]["lat"],
              lon: r[1]["lon"],
              min: r[1]["locuri"]["min"],
              max: r[1]["locuri"]["max"],
              phone: r[1]["telefon"].join(' '),
              img_url: r[1]['image_url']

   )
   r[1]["facilitati"].each do |f|
     facility = Facility.new(name: f)
     if facility.save
       room.facilities << facility
     end
   end
end
