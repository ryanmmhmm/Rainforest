Product.create!([
  {name: "Alpine Skis", description: "Sick Para double point skis bro!", price_in_cents: 50000},
  {name: "Water Bottle", description: "Bitmaker enscribed water bottle", price_in_cents: 2500},
  {name: "Derp", description: "Derpington", price_in_cents: 900100},
  {name: "No_reviews", description: "There are no reviews on this product.", price_in_cents: 1000},
  {name: "Product", description: "A wild Product appears!", price_in_cents: 100}
])
Review.create!([
  {comment: "These skis are gnarly bro!", product_id: 1, user_id: 1},
  {comment: "Sick, but I'm only willing to pay $499.99 for them.", product_id: 1, user_id: 4},
  {comment: "This is a review.", product_id: 2, user_id: 4},
  {comment: "This derp is over 9000!", product_id: 3, user_id: 1}
])
User.create!([
  {email: "magowan.ryan@gmail.com", password_digest: "$2a$10$6GlfhpgxDbh.s/SuB3YI7Oov9BB7ihjS94uCsx1yKVp/TxaAsAP72", name: "Ryan Magowan"},
  {email: "asdf@test.com", password_digest: "$2a$10$P9WUC.CORpWADxIA13qd2.WHg8L/FtM39kdkEar1bTa3bFMvoFsmG", name: "TestUser"}
])
