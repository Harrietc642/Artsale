require "csv"

Artwork.delete_all
#Inspiration.delete_all

=begin
inspiration_filename = Rails.root.join("db/Inspiration1.csv")
puts "Loading Inspirations from the csv file: #{inspiration_filename}"
csv_data_inspiration = File.read(inspiration_filename)
inspirations = CSV.parse(csv_data_inspiration, headers:true, encoding: "utf-8")
inspirations.each do |i|
  Inspiration.create(
    name: i['name'],
    year: i['year'],
    nationality: i['nationality'],
    wikipedia: i['wikipedia'],
    painting: i['painting']
  )
end
=end






artwork_filename = Rails.root.join("db/Artwork1.csv")
puts "Loading Artworks from the csv file: #{artwork_filename}"

csv_data_artwork = File.read(artwork_filename)
artworks = CSV.parse(csv_data_artwork, headers:true, encoding: "utf-8")

artworks.each do | a |
  inspiration = Inspiration.find_or_create_by(name: a["inspiration_name"])
  if inspiration && inspiration.valid?
    #title: a["title"]
    artwork = inspiration.artworks.create(
      title: a['title'],
      price: a['price'],
      brand: a['brand'],
      genre: a['genre'],
      inspiration_name: a['inspiration_name'],
      bitcoin_address: Faker::Blockchain::Bitcoin.address
    )

  else
    puts "Invalid inspiration #{a['inspiration_name']} for artwork #{a['title']}"
  end
end
puts "Created #{Inspiration.count} inspirations"