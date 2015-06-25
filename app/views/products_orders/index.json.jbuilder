json.array!(@products_orders) do |products_order|
  json.extract! products_order, :id, :quantity
  json.url products_order_url(products_order, format: :json)
end
