# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

product = Product.new(
    name: "basketball",
    price: 50,
    image_url:
     "https://cdn.pixabay.com/photo/2013/07/12/14/07/basketball-147794_1280.png",
    description: "orange ball",
   )
   product.save

   p "nsdjsn"