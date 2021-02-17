# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Cellar.destroy_all
Section.destroy_all
Wine.destroy_all
Bottle.destroy_all

User.create(username: "testSeed")
User.create(username: "luke")

types = [
    "Cabernet Sauvignon",
    "Cabernet Franc",
    "Malbec",
    "Grenache",
    "Syrah",
    "Mourvedre",
    "Merlot",
    "Syrah",
    "Zinfandel",
]

sizes = [
    "Standard (750ml)",
    "Split/Piccolo (187.5ml)",
    "Half/Demi (375 ml)",
    "Half-liter/Jennie (500ml)",
    "Liter (1000ml)",
    "Magnum (1.5 L)",
    "Double Magnum (3 L)",
    "Rehoboam (Jeroboam in Bordeaux) (4.5 L)",
    "Methuselah or Imperial (Bordeaux) (6 L)",
    "Salmanazar (9 L)",
    "Balthazar (12 L)",
    "Nebuchadnezzar (15 L)",
    "Melchior (18 L)",
    "Solomon (20 L)",
    "Sovereign (26 L)",
    "Primat/Goliath (27 L)",
    "Melchizedek/Midas (30 L)",
]

names = [
    "The best wine",
    "The worst wine",
    "Your Grandmas wine",
    "Your Grandpas wine"
]

Cellar.create(name: "Basement Cellar", user_id: 1)
Cellar.create(name: "Attic Cellar", user_id: 2)

Section.create(name: "backdoor section", cellar_id: 1, rows: 1, columns: 10, x: 0, y: 0)
Section.create(name: "roof section", cellar_id: 2, rows: 1, columns: 10, x: 0, y: 0)


Wine.create(name: names[1], wineType: types.sample(), winery: "Your winery", year: 1990)
Wine.create(name: names[2], wineType: types.sample(), winery: "Your winery", year: 1990)
Wine.create(name: names[3], wineType: types.sample(), winery: "Your winery", year: 1990)
Wine.create(name: names[4], wineType: types.sample(), winery: "Your winery", year: 1990)

Bottle.create(price: 100, row: 1, column: 1, size: sizes.sample(), wine_id: 1, section_id: 1)
Bottle.create(price: 100, row: 1, column: 2, size: sizes.sample(), wine_id: 2, section_id: 1)
Bottle.create(price: 100, row: 1, column: 3, size: sizes.sample(), wine_id: 3, section_id: 1)
Bottle.create(price: 100, row: 1, column: 4, size: sizes.sample(), wine_id: 4, section_id: 1)

Bottle.create(price: 100, row: 1, column: 4, size: sizes.sample(), wine_id: 4, section_id: 2)