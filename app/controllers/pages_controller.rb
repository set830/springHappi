class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new
    @page.for = params[:for]
    @page.comment_id = params[:comment_id]
    @page.blog_id = params[:blog_id]
    @page.calendar_id = params[:calendar_id]
    @page.description = params[:description]
    @page.photo = params[:photo]
    @page.title = params[:title]
    @page.user_id = params[:user_id]

    if @page.save
      redirect_to "/pages", :notice => "Page created successfully."
    else
      render 'new'
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])

    @page.for = params[:for]
    @page.comment_id = params[:comment_id]
    @page.blog_id = params[:blog_id]
    @page.calendar_id = params[:calendar_id]
    @page.description = params[:description]
    @page.photo = params[:photo]
    @page.title = params[:title]
    @page.user_id = params[:user_id]

    if @page.save
      redirect_to "/pages", :notice => "Page updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @page = Page.find(params[:id])

    @page.destroy

    redirect_to "/pages", :notice => "Page deleted."
  end
end
