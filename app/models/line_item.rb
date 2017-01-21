class LineItem < ApplicationRecord
  #belongs_to :order          #выкидывает ошибку, если определена зависимость.
                              #Если закоментить, работает, но не записывает cart_id
  belongs_to :product
  belongs_to :cart

  def total_price
      product.price * quantity
  end
end
