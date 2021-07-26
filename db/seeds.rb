Office.destroy_all
Employee.destroy_all
Company.destroy_all
Building.destroy_all

building1 = Building.create(
    name: 'Building ' + Faker::Address.city,
    country: Faker::Address.country,
    address: Faker::Address.street_address,
    rent_per_floor: '6000',
    number_of_floors: 3
  )

building2 = Building.create(
    name: 'Building ' + Faker::Address.city,
    country: Faker::Address.country,
    address: Faker::Address.street_address,
    rent_per_floor: '8000',
    number_of_floors: 3
  )

building3 = Building.create(
    name: 'Building ' + Faker::Address.city,
    country: Faker::Address.country,
    address: Faker::Address.street_address,
    rent_per_floor: '2000',
    number_of_floors: 3
  )

company1 = Company.create(name: Faker::Company.name)
company2 = Company.create(name: Faker::Company.name)
company3 = Company.create(name: Faker::Company.name)
company4 = Company.create(name: Faker::Company.name)
company5 = Company.create(name: Faker::Company.name)
company6 = Company.create(name: Faker::Company.name)
vacant = Company.create(name: "Vacant Floor")

office1 = Office.create(building: building1, company: company3, floor: 1)
office2 = Office.create(building: building1, company: company1, floor: 2)
office3 = Office.create(building: building1, company: vacant, floor: 3)

office4 = Office.create(building: building2, company: vacant, floor: 1)
office5 = Office.create(building: building2, company: company1, floor: 2)
office6 = Office.create(building: building2, company: vacant, floor: 3)

office7 = Office.create(building: building3, company: company4, floor: 1)
office8= Office.create(building: building3, company: vacant, floor: 2)
office9 = Office.create(building: building3, company: company6, floor: 3)

employee1 = Employee.create(name: Faker::Name.name, title: Faker::Job.title , company: company1 ,)
employee2 = Employee.create(name: Faker::Name.name, title: Faker::Job.title , company: company1 ,)

employee3 = Employee.create(name: Faker::Name.name, title: Faker::Job.title , company: company2 ,)
employee4 = Employee.create(name: Faker::Name.name, title: Faker::Job.title , company: company2 ,)
employee5 = Employee.create(name: Faker::Name.name, title: Faker::Job.title , company: company2 ,)

employee6 = Employee.create(name: Faker::Name.name, title: Faker::Job.title , company: company3 ,)
employee7 = Employee.create(name: Faker::Name.name, title: Faker::Job.title , company: company3 ,)
employee8 = Employee.create(name: Faker::Name.name, title: Faker::Job.title , company: company3 ,)
employee9 = Employee.create(name: Faker::Name.name, title: Faker::Job.title , company: company3 ,)

employee9 = Employee.create(name: Faker::Name.name, title: Faker::Job.title , company: company4 ,)
employee9 = Employee.create(name: Faker::Name.name, title: Faker::Job.title , company: company4 ,)
employee9 = Employee.create(name: Faker::Name.name, title: Faker::Job.title , company: company4 ,)

employee10 = Employee.create(name: Faker::Name.name, title: Faker::Job.title , company: company5 ,)
employee11 = Employee.create(name: Faker::Name.name, title: Faker::Job.title , company: company5 ,)
employee12 = Employee.create(name: Faker::Name.name, title: Faker::Job.title , company: company5 ,)
employee13 = Employee.create(name: Faker::Name.name, title: Faker::Job.title , company: company5 ,)

employee13 = Employee.create(name: Faker::Name.name, title: Faker::Job.title , company: company6 ,)
employee13 = Employee.create(name: Faker::Name.name, title: Faker::Job.title , company: company6 ,)