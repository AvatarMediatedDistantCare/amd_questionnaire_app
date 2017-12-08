class EnquetteController < ApplicationController
  def index
    @user = User.new
  end

  def explain
    @session = Session.new
  end

  def finish
  end

  def sample
  end
end
