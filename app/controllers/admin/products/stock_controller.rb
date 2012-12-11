# encoding: utf-8

class Admin::Products::StockController < Admin::ProductsController

  before_filter do 
    begin

      Rails.application.routes.recognize_path params[:return_path]
      @products = products_user_order_tab_scope( Product.scoped, 'checked' )
      products_any_checked_validation
      products_all_statuses_validation ['post_supplier', 'complete']
      #products_belongs_to_one_supplier_validation!

    rescue ValidationError => e
      redirect_to :back, :alert => e.message
    end

  end


  def index
  end


  def create

    ActiveRecord::Base.transaction do
      @products.each do |product|
        product.status = 'stock'
        product.status_will_change!
        unless product.save
          redirect_to :back, :alert => product.errors.full_messages and return
        end
      end

    end

    redirect_to_relative_path('stock')

  end
end
