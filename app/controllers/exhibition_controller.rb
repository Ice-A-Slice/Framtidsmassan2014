class ExhibitionController < ApplicationController
  skip_before_action :authorize

  def index
    @rooms = Room.order(:title)
    @testRoom = Room.find(3)
    @categories = Category.order(:id)
    @info = InfoText.order(:id).last
    @stefan = @categories.select(:id)
    @exhibitors = Exhibitor.order(:title)
    @schedules = Schedule.order(:time)
    @cat = Category.find_by(params[:id])
    @newsfeed = Newsfeed.order(:created_at).limit(3).reverse_order
    @mapArray = Map.all.order(:id).reverse
    @map = @mapArray.first
  end

end
