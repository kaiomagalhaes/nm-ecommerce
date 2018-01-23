# frozen_string_literal: true

module Spree
  class ContactController < Spree::StoreController
    respond_to :html

    def index
      @searcher = build_searcher(params.merge(include_images: true))
      @title = 'Contact Us'
    end
  end
end
