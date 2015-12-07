class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
    include ApplicationHelper
    # before_filter :authenticate_user!



  def get_records_page(model)
    # determine records to display per page
    per_page = params.fetch(:limit, 10).to_i
    per_page = 1 if per_page < 1
    per_page = 15 if per_page > 15

    # make sure the current page is valid
    @last_page = (model.count/per_page.to_f).ceil
    @current_page = params.fetch(:page, 1).to_i
    @current_page = 1 if @current_page < 1
    @current_page = @last_page if @current_page > @last_page

    offset   = (@current_page - 1) * per_page

    @prev_page_num = @current_page - 1
    @prev_page_num = false if @prev_page_num < 1
    @next_page_num = @current_page + 1
    @next_page_num = false if @next_page_num > @last_page

    model.limit(per_page).offset(offset)
  end
end
