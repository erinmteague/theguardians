class AdminsController < ApplicationController
  def new
  end

  def show
  	@admin = admin
  end

  def edit
  	@admin = admin
  end
end
