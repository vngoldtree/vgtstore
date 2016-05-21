Deface::Override.new(:virtual_path => 'spree/admin/taxons/_form',
  :name => 'add_icon_class_to_taxon_form',
  :insert_after => "erb[loud]:contains('file_field :icon')",
  :text => "
     <%= f.field_container :icon_class, class: ['form-group'] do %>
        <%= f.label :icon_class, Spree.t(:icon_class) %>
        <%= f.text_area :icon_class, :class => 'form-control', :rows => 1 %>
    <% end %>
")
