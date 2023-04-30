# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

movies = Movie.create([
    { name: "The Shawshank Redemption", director: "Frank Darabont", year: 1994, duration: 142, description: "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency." },
    { name: "The Godfather", director: "Francis Ford Coppola", year: 1972, duration: 175, description: "An organized crime dynasty's aging patriarch transfers control of his clandestine empire to his reluctant son." },
    { name: "The Godfather: Part II", director: "Francis Ford Coppola", year: 1974, duration: 202, description: "The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate." },
    { name: "The Dark Knight", director: "Christopher Nolan", year: 2008, duration: 152, description: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice." },
    { name: "12 Angry Men", director: "Sidney Lumet", year: 1957, duration: 96, description: "A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence." },
    { name: "Schindler's List", director: "Steven Spielberg", year: 1993, duration: 195, description: "In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis." },
    { name: "The Lord of the Rings: The Return of the King", director: "Peter Jackson", year: 2003, duration: 201, description: "Gandalf and Aragorn lead the World of Men against Sauron's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring." },
    { name: "Pulp Fiction", director: "Quentin Tarantino", year: 1994, duration: 154, description: "The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption." },
    { name: "The Lord of the Rings: The Fellowship of the Ring", director: "Peter Jackson", year: 2001, duration: 178, description: "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron." },
    { name: "Forrest Gump", director: "Robert Zemeckis", year: 1994, duration: 142, description: "The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate, and other historical events unfold through the perspective of an Alabama man with an IQ of 75." },
    { name: "Inception", director: "Christopher Nolan", year: 2010, duration: 148, description: "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O." },
])

stars = Star.create([
    { name: "Morgan Freeman", age: 84, birthday: Date.new(1937, 6, 1) },
    { name: "Tim Robbins", age: 63, birthday: Date.new(1958, 10, 16) },
    { name: "Marlon Brando", age: 80, birthday: Date.new(1924, 4, 3) },
    { name: "Al Pacino", age: 81, birthday: Date.new(1940, 4, 25) },
    { name: "Robert De Niro", age: 78, birthday: Date.new(1943, 8, 17) },
    { name: "Christian Bale", age: 47, birthday: Date.new(1974, 1, 30) },
    { name: "Liam Neeson", age: 69, birthday: Date.new(1952, 6, 7) },
    { name: "John Travolta", age: 67, birthday: Date.new(1954, 2, 18) },
    { name: "Tom Hanks", age: 65, birthday: Date.new(1956, 7, 9) },
    { name: "Leonardo DiCaprio", age: 47, birthday: Date.new(1974, 11, 11) }
])

categories = Category.create([
    { name: "Action" },
    { name: "Comedy" },
    { name: "Drama" },
    { name: "Horror" },
    { name: "Romance" },
    { name: "Sci-Fi" },
    { name: "Thriller" },
    { name: "Documentary" },
    { name: "Animation" },
    { name: "Adventure" }
])