# frozen_string_literal: true

module Spree
  class AboutController < Spree::StoreController
    respond_to :html

    def index
      @searcher = build_searcher(params.merge(include_images: true))
      @products = @searcher.retrieve_products
      @title = 'About Us'
    end
  end
end
