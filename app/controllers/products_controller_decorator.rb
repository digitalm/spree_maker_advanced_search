Spree::ProductsController.class_eval do

  def advanced_search
      @searcher = build_searcher(params)

      @products = @searcher.retrieve_products.includes(:add_on_makers).includes(:variants_including_master => :prices).includes(:taxons)
      @q = @products.search(params[:q])

    if params[:q]
      is_blank = (params[:q][:s].blank? && params[:q][:name_cont].blank? && params[:q][:add_on_makers_id_eq].blank? && params[:q][:variants_including_master_sku_cont].blank? && params[:q][:variants_including_master_prices_amount_gteq].blank? && params[:q][:variants_including_master_prices_amount_lteq].blank?) ? true : false
      unless is_blank
      @products = @q.result.page.per(Spree::Config[:products_per_page])
      end
    end
    render "advanced_search"
  end

end