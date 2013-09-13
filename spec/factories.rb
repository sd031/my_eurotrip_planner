FactoryGirl.define do

  factory :trip do
    length 3
    europe_zone_id 1
    sightseeing_preference_id 2
    transportation_preference_id 1
    name "Backpacker - basic trip"
  end

  factory :europe_zone do
    name "sample_zone"
    trip
  end

  factory :comment do |comment|
    comment.name "Michael Hartl"
    comment.email "michael@example.com"
    comment.comment "foobar"
    comment.trip_id 1
  end

#http://stackoverflow.com/questions/10032760/how-to-define-an-array-hash-in-factory-girl
  factory :comments, class: Array do
    name "Michael Hartl"
    email "michael@example.com"
    comment "foobar"
    initialize_with { [attributes[:name], attributes[:email], attributes[:comment]] }
  end


end