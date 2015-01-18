class StarterController < ApplicationController

  def index
    @topics = Topic.all

    @subjects = Subject.order(:id => :desc).paginate(page: params[:page], per_page: 15)
  end

  def topic

    @topics = Topic.all

    @topic = Topic.find(params[:topic])

    @subjects = Subject.where(:topic_id => @topic.id).order(:id => :desc).paginate(page: params[:page], per_page: 15)

    render 'index'
  end

  def like
    @id = params[:subject]
  end

  def comment
    @id = params[:subject]
  end

end
