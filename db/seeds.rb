5.times do 
    Student.create({
        email: Faker::Internet.email,
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        grade: 10,
        username: Faker::Internet.username,
        password: Faker::Internet.password,
        short_id: Faker::Number.number(digits: 4),
        long_id: Faker::Number.number(digits: 9),
        role: "student",
        school: "Portola High School"
    })
end