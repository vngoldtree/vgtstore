class AddIconClassToSpreeTaxons < ActiveRecord::Migration
  def change
    add_column :spree_taxons, :icon_class, :string
  end
end
