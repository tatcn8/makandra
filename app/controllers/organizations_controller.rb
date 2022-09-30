class OrganizationsController < ApplicationController
  def show
    @organization = Organization.find_by(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
