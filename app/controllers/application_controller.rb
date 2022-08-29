class ApplicationController < ActionController::Base
  include CartsHelper
  include ItemsHelper
  add_flash_types :info, :error, :success, :alert
end
