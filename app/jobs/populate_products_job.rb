require 'faker'

class PopulateProductsJob < ApplicationJob
  queue_as :default

  def perform_now(opt={})
    100.times do
      product = Product.new(
        name: Faker::Game.title,
        description: Faker::Game.platform,
        price: Faker::Number.between(from: 0.0, to: 1000.0).round(2)
      )

      product.save!
    end  
  end
end
