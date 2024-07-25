# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require "open-uri"

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/8/82/NES-Console-Set.jpg')
article = Article.new(title: 'NES', body: "A great console")
article.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
