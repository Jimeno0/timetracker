class SiteController < ApplicationController
  def home
  end

  def contact
  end

  def calculator
  end

  def calculate
    @first = params[:first_num].to_f
    @second = params[:second_num].to_f
    @result = @first + @second

  end
end
