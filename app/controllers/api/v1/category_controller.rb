class Api::V1::CategoryController < ApplicationController
  def show
    category = params[:category] ? params[:category] : "sports"
    @category = Category.where(:cat_title => category.capitalize).first
    render :json => @category
  end
end
