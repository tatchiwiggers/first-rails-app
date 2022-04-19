class PagesController < ApplicationController

  def home
    @today = Date.today.strftime('%A, %b %d')
  end

  def about
  end

  def contact
    search = params[:teacher]
    @teachers = ['Tatchi', 'Fernanda', 'Leandro', 'Mariana', 'Bianca']

    # here we create a condition to only get the teachers we are interested in
    if search.present?
      @teachers = @teachers.select { |teacher| teacher.downcase == search.downcase }
    end
    # raise
  end
end
