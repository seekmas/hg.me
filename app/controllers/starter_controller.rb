class StarterController < ApplicationController

  def index
    @topics = Topic.all

    @subjects = Subject.order(:id => :desc).paginate(page: params[:page], per_page: 15)
  end

  def like
    @id = params[:subject]


  end

  def comment
    @id = params[:subject]
  end

end
