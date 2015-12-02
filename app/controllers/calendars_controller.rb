class CalendarsController < ApplicationController
  skip_before_action :authenticate_user, only:[:index, :show, :edit, :update]

  def index
    @calendars = Calendar.all
  end

  def show
    @calendar = Calendar.find(params[:id])
  end

  def new
    @calendar = Calendar.new
  end

  def create
    @calendar = Calendar.new
    @calendar.comment = params[:comment]
    @calendar.name = params[:name]
    @calendar.chosendate = params[:chosendate]
    @calendar.page_id = params[:page_id]

    if @calendar.save
      redirect_to "/calendars", :notice => "Calendar created successfully."
    else
      render 'new'
    end
  end

  def edit
    @calendar = Calendar.find(params[:id])
  end

  def update
    @calendar = Calendar.find(params[:id])

    @calendar.comment = params[:comment]
    @calendar.name = params[:name]
    @calendar.chosendate = params[:chosendate]
    @calendar.page_id = params[:page_id]

    if @calendar.save
      redirect_to "/calendars", :notice => "Calendar updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @calendar = Calendar.find(params[:id])

    @calendar.destroy

    redirect_to "/calendars", :notice => "Calendar deleted."
  end
end
