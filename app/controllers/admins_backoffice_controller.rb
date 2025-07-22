class AdminsBackofficeController < ApplicationController
  before_action :authenticate_admins_backoffice!
  layout "admins_backoffice"
end
