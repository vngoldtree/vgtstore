module Spree
	Image.class_eval do
		attachment_definitions[:attachment][:styles].merge!(
	    	:home_product => '500x500>'
		)

		attachment_definitions[:attachment][:styles].each do |style, v|
		    define_method "#{style}_image" do |product, *options|
		      options = options.first || {}
		      if product.images.empty?
		        image_tag "noimage/#{style}.jpg", options
		      else
		        image = product.images.first
		        options.reverse_merge! :alt => image.alt.blank? ? product.name : image.alt
		        image_tag image.attachment.url(style), options
		      end
		    end
	  	end
	end
end