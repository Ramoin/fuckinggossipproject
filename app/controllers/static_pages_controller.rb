class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:secret]
  def secret
  end
end
