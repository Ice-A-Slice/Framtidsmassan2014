class AdminController < ApplicationController
  def index
    @rooms = Room.order(:title)
    @categories = Category.order(:id)
    @info = InfoText.order(:id).last
    @stefan = @categories.select(:id)
    @exhibitors = Exhibitor.order(:title)
    @schedules = Schedule.order(:time)
    @cat = Category.find_by(params[:id])
    @newsfeed = Newsfeed.order(:created_at).limit(5).reverse_order

    @mapArray = Map.all.order(:id).reverse
    @map = @mapArray.first  end

  def admin_for_exhibitors
    @info = ExhibitorInformation.order(:id).last
    @contact1 = Contact.find(1)
    @contact2 = Contact.find(2)
    @address = PostAddress.order(:id).last

  end

  def statistics
    @total_exhibitors = Exhibitor.count
    @total_newsfeeds = Newsfeed.count
    @total_categories = Category.count
    @total_rooms = Room.count
    @total_schedules = Schedule.count
  end
end
