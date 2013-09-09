FactoryGirl.define do
  factory :comment do |comment|
    comment.name     "Michael Hartl"
    comment.email    "michael@example.com"
    comment.comment "foobar"
  end

#http://stackoverflow.com/questions/10032760/how-to-define-an-array-hash-in-factory-girl
  factory :comments, class:Array do
    name "Michael Hartl"
    email "michael@example.com"
    comment "foobar"
    initialize_with { [attributes[:name], attributes[:email], attributes[:comment]] }
  end

  factory :trip do |trip|
    trip.end_date     "1"
    trip.start_date   "2"
    trip.europe_zone_id 1
    trip.sighseeing_preference_id 2
    trip.transportation_preference_id 1
  end
end