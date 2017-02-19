module Admin::ProductsHelper
	def render_product_status(product)
    if product.is_sold
      content_tag(:span, "", :class => "fa fa-lock")
    else
      content_tag(:span, "", :class => "fa fa-globe")
    end
  end
end
