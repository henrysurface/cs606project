FactoryGirl.define do
  factory :admin do
    name                  "Mark Brown"
    email                 "mbrown@yahoo.com"
    password              "foobar"
    password_confirmation "foobar"
  end 
end