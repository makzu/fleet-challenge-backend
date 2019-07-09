# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

# A real app would check for duplicate data and whatnot, naturally, but for this
# challenge reading raw from the CSV should suffice

raw_csv = File.read(Rails.root.join('db', 'seeds', 'service_provider_data.csv'))
csv = CSV.parse(raw_csv, headers: true)
csv.each do |row|
  Provider.create(
    name: row['name'],
    amount: row['flat shipping rate'].to_f,
    amount_currency: row['currency']
  )
end

raw_csv = File.read(Rails.root.join('db', 'seeds', 'rate_data.csv'))
csv = CSV.parse(raw_csv, headers: true)
csv.each do |row|
  Rate.create(
    amount: row['rate'].to_f,
    amount_currency: row['currency'],
    origin: row['origin'],
    destination: row['destination'],
    provider_id: row['shipping company id']
  )
end
