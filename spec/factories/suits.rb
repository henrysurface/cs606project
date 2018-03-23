FactoryGirl.define do
  factory :suit do
    appid "1"
    gender "male"
    size "8"
    description ""
    user_id "1"

  
  factory :invalid_suit do
      appid nil
    end
    
  end
end