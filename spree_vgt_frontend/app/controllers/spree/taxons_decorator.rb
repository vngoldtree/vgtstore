module Spree
	TaxonsController.class_eval do
		alias_method :orig_show, :show
		def show
			@taxon = Taxon.friendly.find(params[:id])
			@parent_taxons = [@taxon]
			tmp = @taxon
			while tmp.parent_id do
				tmp = Taxon.friendly.find(tmp.parent_id)
				@parent_taxons << tmp
			end
      		return unless @taxon
			return orig_show
		end
	end
end