class ForExhibitorsController < ApplicationController
  skip_before_action :authorize
  def index

    @info = ExhibitorInformation.order(:id).last

    @address = PostAddress.find(1)

    @contact = Contact.all.order(:id).reverse
    @contact1 = @contact.second
    @contact2 = @contact.first

  end
end
