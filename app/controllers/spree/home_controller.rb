module Spree
  class HomeController < Spree::StoreController
    layout 'spree/layouts/home_layout'
    helper 'spree/products'
    respond_to :html

    def index
      @searcher = build_searcher(params.merge(include_images: true))
      @products = @searcher.retrieve_products
    end
  end
end
