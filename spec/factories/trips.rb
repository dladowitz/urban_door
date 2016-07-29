FactoryGirl.define do
  factory :trip do
    driver
    city
    pickup Date.today
    fare 1900
    car ["UberX", "UberPool", "UberSUV", "UberBlack"].sample
    payment_method 4242424242424242
  end
end
