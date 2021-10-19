class PagesController < ApplicationController

  def home
    @today = Date.today.strftime('%A, %b %d')
  end

  def about
  end

  def contact
    search = params[:teacher]
    @teachers = ['tatchi', 'gui', 're', 'mariana', 'carlos']

    if search.present?
      @teachers = @teachers.select { |teacher| teacher.downcase == search.downcase }
    end
    raise
  end
end
