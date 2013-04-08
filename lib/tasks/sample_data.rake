namespace :db do
  desc "fill db with sample data"
  task populate: :environment do
    admin = User.create!(name: "Billy Blanks", email: "billy@blanks.io",
                  password: "taller", password_confirmation: "taller")
    admin.toggle!(:admin)

    password = "password"
    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n}@railstutorial.org"
      User.create!(name: name, email: email,
                    password: password, password_confirmation: password)
    end
  end
end
