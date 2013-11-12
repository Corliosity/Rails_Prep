class WelcomeController < ApplicationController

  skip_before_filter :require_login, only: :index

  def index
    @students = Student.all
    @courses = Course.all
  end
end
