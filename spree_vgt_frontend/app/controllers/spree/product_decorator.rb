module Spree
	ProductsController.class_eval do
		alias_method :orig_show, :show
		def show
			@taxonomies = Spree::Taxonomy.includes(root: :children)
			return orig_show
		end
	end
end