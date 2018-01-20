# frozen_string_literal: true

module Spree
  class ContactController < Spree::StoreController
    respond_to :html

    def index
      @searcher = build_searcher(params.merge(include_images: true))
      @products = @searcher.retrieve_products
      @title = 'Contact Us'
    end
  end
end
