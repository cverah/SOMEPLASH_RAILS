puts "Seeding data"

Comment.destroy_all
Photo.destroy_all
Category.destroy_all
# create Category
wallpapers = Category.new(name: "Wallpapers", description: "From epic drone shots to inspiring moments in nature, find free HD wallpapers worthy of your screens.")
wallpapers.cover.attach(io: File.open("db/images/wallpapers.png"), filename: "wallpapers_cover")
wallpapers.save

nature = Category.new(name: "Nature", description: "Let’s celebrate the magic of Mother Earth — with images of everything our planet has to offer.")
nature.cover.attach(io: File.open("db/images/nature.png"), filename: "nature_cover")
nature.save

people = Category.new(name: "People", description: "Real people, captured. Photography has the power to reflect the world around us, give voice to individuals and groups.")
people.cover.attach(io: File.open("db/images/people.png"), filename: "people_cover")
people.save


# create photo
purple_lake = Photo.new(title: "Purple lake", description:"Nice and big purple lake.", category: nature)
purple_lake.image.attach(io: File.open("db/images/purple_lake.png"), filename: "purple_lake")
purple_lake.save

green_plant = Photo.new(title: "Green plant", description:"Nice and big Green plant.", category: nature)
green_plant.image.attach(io: File.open("db/images/green_plant.png"), filename: "green_plant")
green_plant.save

lonely_bird = Photo.new(title: "Lonely bird", description:"Nice and big Lonely bird.", category: nature)
lonely_bird.image.attach(io: File.open("db/images/lonely_bird.png"), filename: "lonely_bird")
lonely_bird.save

squirrel = Photo.new(title: "squirrel", description:"Nice and big squirrel.", category: wallpapers)
squirrel.image.attach(io: File.open("db/images/squirrel.png"), filename: "squirrel")
squirrel.save

# create comments category
comment_nature = Comment.new(body: "This is an example of a comment for this category.", commentable: nature)
comment_nature.save

comment_nature = Comment.new(body: "This is an example of a comment for this category.", commentable: nature)
comment_nature.save

comment_wallpapers = Comment.new(body: "This is an example of a comment for this category.", commentable: wallpapers)
comment_wallpapers.save

comment_people = Comment.new(body: "This is an example of a comment for this category.", commentable: people)
comment_people.save

# coments photo
comment_purple_lake = Comment.new(body: "This is an example of a comment for this photo.", commentable: purple_lake)
comment_purple_lake.save

comment_purple_lake= Comment.new(body: "This is an example of a comment for this photo.", commentable: purple_lake)
comment_purple_lake.save

comment_green_plant = Comment.new(body: "This is an example of a comment for this photo.", commentable: green_plant)
comment_green_plant.save

comment_squirrel = Comment.new(body: "This is an example of a comment for this photo.", commentable: squirrel)
comment_squirrel.save

puts "Finish Data"