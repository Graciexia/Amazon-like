50.times do
  password = Faker::Internet.password
  user = User.create(name: Faker::Internet.name,
                     email: Faker::Internet.safe_email)

  product = Product.create(title: Faker::Commerce.product_name,
                           price: Faker::Commerce.price,
                           description: Faker::Lorem.sentence,
                           in_stock: Faker::Number.number(2),
                           pic: "https://imeldalalus.files.wordpress.com/2014/01/10271935643_51aa32f9f6_b.jpg")

  order = Order.create(user_id: user.id, complete: true)

  ProductsOrder.create(product_id: product.id, order_id: order.id, quantity: Faker::Number.digit)

end
