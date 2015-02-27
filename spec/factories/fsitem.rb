FactoryGirl.define do
  factory :fsitem do
    name Faker::Hacker.noun
    parent nil
  end

  factory :top_directory, class: FSItem do
    name 'root'
    parent nil
  end

  factory :nested_directory, class: FSItem do
    name Faker::Hacker.noun
    association :parent, factory: :top_directory
  end

  factory :file, class: FSItem do
    name Faker::Hacker.noun
    association :parent, factory: :top_directory
  end

  factory :nested_file, class: FSItem do
    name Faker::Hacker.noun
    association :parent, factory: :nested_directory
  end
end
