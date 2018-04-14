class PagesController < ApplicationController
  def home
    @blogs = Blog.all
    @skills = Skill.all
  end

  def about
  end

  def contact
  end

  def missing

  end

  def args
    @first = params[:firstArg]
    @second = params[:secondArg]

  end
end
