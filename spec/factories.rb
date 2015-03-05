FactoryGirl.define do  factory :visit do
    student nil
profile nil
date "2015-03-03"
status "MyString"
  end
  factory :sector do
    name "MyText"
image ""
  end


  factory :favorite do
    student nil
    favorited nil
  end

  
  factory :student do
    name "Jonny"
    email "student@example.com"
    password "password"
    password_confirmation "password"
  end

  factory :professional do
    email "professional@example.com"
    password "password"
    password_confirmation "password"
  end

  factory :profile do
    name "Emily"
    professional
    job "Software Engineer"
    verified "true"
  end

  factory :admin do
    email "admin_test@example.com"
    password "password"
    password_confirmation "password"
  end

end