class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart

  def redirect_url
      redirect_to :back
  end

  def index
      if params[:set_locale]
          redirect_to redirect_url(locale: params[:set_locale])
      else
        @products = Product.order(:title)
      end
    end
end
