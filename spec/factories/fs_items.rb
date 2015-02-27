FactoryGirl.define do
  factory :fs_item, class: FsItem do
    name Faker::Hacker.noun
  end

  factory :top_directory, class: FsItem do
    name 'root'
  end

  factory :nested_directory, class: FsItem do
    name Faker::Hacker.noun
    association :fs_item, factory: :top_directory
  end

  factory :file, class: FsItem do
    name Faker::Hacker.noun
    association :fs_item, factory: :top_directory
  end

  factory :nested_file, class: FsItem do
    name Faker::Hacker.noun
    association :fs_item, factory: :nested_directory
  end
end
