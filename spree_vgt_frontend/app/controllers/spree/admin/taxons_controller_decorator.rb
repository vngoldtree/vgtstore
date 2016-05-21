Spree::Admin::TaxonsController.class_eval do
	before_action :add_new_permited_attributes, only: [:update]
	def add_new_permited_attributes
		permitted_taxon_attributes.push :icon_class
	end
end