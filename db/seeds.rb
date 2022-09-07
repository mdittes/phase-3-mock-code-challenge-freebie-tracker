puts "Creating companies..."
c1 = Company.create(name: "Google", founding_year: 1998)
c2 = Company.create(name: "Facebook", founding_year: 2004)
c3 = Company.create(name: "Dunder Mifflin", founding_year: 2002)
c4 = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
d1 = Dev.create(name: "Rick")
d2 = Dev.create(name: "Morty")
d3 = Dev.create(name: "Mr. Meseeks")
d4 = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
Freebie.create(item_name: "shirt", value: 25, company_id: c1.id, dev_id: d1.id)
Freebie.create(item_name: "mug", value: 15, company_id: c3.id, dev_id: d2.id)
Freebie.create(item_name: "pen", value: 5, company_id: c2.id, dev_id: d2.id)
Freebie.create(item_name: "journal", value: 10, company_id: c4.id, dev_id: d3.id)
Freebie.create(item_name: "umbrella", value: 18, company_id: c1.id, dev_id: d4.id)
Freebie.create(item_name: "sweatshirt", value: 38, company_id: c1.id, dev_id: d3.id)
Freebie.create(item_name: "tote bag", value: 21, company_id: c2.id, dev_id: d1.id)
Freebie.create(item_name: "lanyard", value: 5, company_id: c3.id, dev_id: d4.id)
Freebie.create(item_name: "sunglasses", value: 12, company_id: c4.id, dev_id: d2.id)

puts "Seeding done!"
