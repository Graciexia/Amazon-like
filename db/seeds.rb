10.times do
  user = User.create(name: Faker::Name.name,
                     email: Faker::Internet.email,
                     password: "123456", password_confirmation: "123456")
  3.times do
    order = user.orders.create(status: ["completed","processing"].sample)
  end
  5.times do
    product = Product.create(category: Faker::Commerce.department,
                              title: Faker::Commerce.product_name,
                               price: Faker::Commerce.price,
                               description: Faker::Lorem.sentence,
                               in_stock: Faker::Number.digit)
  end
end

Order.all.each do |order|
  4.times do
    random_product = Product.offset(rand(Product.count)).first
    ProductsOrder.create(product_id: random_product.id,
                           order_id: order.id,
                           quantity: Faker::Number.digit)
  end
end
