FactoryGirl.define do
  factory :comment do |comment|
    comment.name     "Michael Hartl"
    comment.email    "michael@example.com"
    comment.comment "foobar"
  end
end