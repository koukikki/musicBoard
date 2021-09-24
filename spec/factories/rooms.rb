FactoryBot.define do
  factory :room do
    title              {'test'}
    artist                 {'example'}
    date              {'2021-10-20'}
    association :user 
  end
end
