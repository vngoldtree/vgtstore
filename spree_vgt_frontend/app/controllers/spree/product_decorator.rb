module Spree
	ProductsController.class_eval do
		alias_method :orig_show, :show
		def show
			@parent_taxons = []
			if @product.taxons
				@parent_taxons << @product.taxons.first
				tmp = @product.taxons.first
				while tmp.parent_id
					tmp =  Taxon.friendly.find(tmp.parent_id)
					@parent_taxons << tmp
				end
			end
			@taxonomies = Spree::Taxonomy.includes(root: :children)
			return orig_show
		end
	end
end