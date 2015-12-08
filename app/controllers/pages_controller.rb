class PagesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:show, :blog]

  before_action :current_user_must_be_owner, :only => [:edit, :update, :destroy]

  def current_user_must_be_owner
    @page = Page.find(params[:id])
    if @page.user != current_user
      redirect_to root_url, :alert => "Not authorized"
    end
  end

  def index
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
    @posting = Posting.new
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new
    @page.title = params[:title]
    @page.description = params[:description]
    @page.firstimage = params[:firstimage]
    @page.secondimage = params[:secondimage]
    @page.thirdimage = params[:thirdimage]
    @page.fourthimage = params[:fourthimage]
    @page.user_id = params[:user_id]

    if @page.save
      redirect_to "/pages/#{@page.id}", :notice => "Page created successfully."
    else
      render 'new'
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])

    @page.title = params[:title]
    @page.description = params[:description]
    @page.firstimage = params[:firstimage]
    @page.secondimage = params[:secondimage]
    @page.thirdimage = params[:thirdimage]
    @page.fourthimage = params[:fourthimage]
    @page.user_id = params[:user_id]

    if @page.save
      redirect_to "/pages/#{@page.id}", :notice => "Page updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @page = Page.find(params[:id])

    @page.destroy

    redirect_to "/pages", :notice => "Page deleted."
  end

  def blog
    @page = Page.find(params[:id])
  end
end
