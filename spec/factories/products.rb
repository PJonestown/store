FactoryGirl.define do
  factory :product do
    name { Faker::Commerce.product_name }
    description { Faker::Company.bs }
    price { Faker::Commerce.price }

    factory :invalid_product do
      name nil
    end
  end

end
