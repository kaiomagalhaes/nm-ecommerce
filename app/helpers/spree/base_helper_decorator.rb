# frozen_string_literal: true

module Spree
  module BaseHelper
    def nav_bar_taxons_tree(root_taxon, current_taxon, max_level = 1)
      return '' if max_level < 1 || root_taxon.children.empty?
      taxons_tree_builder(root_taxon, current_taxon, max_level)
    end

    private

    def taxons_tree_builder(root_taxon, current_taxon, max_level)
      content_tag :ul, class: 'dropdown-menu taxons-list' do
        taxons = root_taxon.children.map do |taxon|
          css_class = current_taxon&.self_and_ancestors&.include?(taxon) ? 'active' : nil
          content_tag :li, class: css_class do
            link_to(taxon.name, seo_url(taxon)) +
              taxons_tree(taxon, current_taxon, max_level - 1)
          end
        end
        safe_join(taxons, "\n")
      end
    end
  end
end
