module Spree
	Image.attachment_definitions[:attachment][:styles].merge!(
      :medium => '500x500>',
      :maximum => '800x800>',
     )
end