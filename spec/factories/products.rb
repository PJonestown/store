FactoryGirl.define do
  factory :product do
    name { Faker::Commerce.product_name }
    description { Faker::Company.bs }
    price { Faker::Commerce.price }
    stock { Faker::Number.number(4) }

    factory :invalid_product do
      name nil
    end
  end

end
