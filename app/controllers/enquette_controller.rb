class EnquetteController < ApplicationController
  def index
    @user = User.new
  end

  def enquette
    @answer = Answer.new
  end
end
