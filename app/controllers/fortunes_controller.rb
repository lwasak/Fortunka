class FortunesController < ApplicationController
  
  layout :ajax
  
  def ajax
      request.xhr? ? false : "application" 
  end

  def index
    @fortunes = Fortune.page(params[:page]).per(5)

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def randf    
    @fortune = Fortune.skip(rand(Fortune.count)).limit(1)
    
    respond_to do |format|
      format.html # randf.html.erb
    end
  end
  
  def show
    @fortune = Fortune.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def new
    @fortune = Fortune.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @fortune = Fortune.find(params[:id])
  end

  def create
    @fortune = Fortune.new(params[:fortune])

    respond_to do |format|
      if @fortune.save
        format.html { redirect_to @fortune, notice: 'Fortune was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @fortune = Fortune.find(params[:id])

    respond_to do |format|
      if @fortune.update_attributes(params[:fortune])
        format.html { redirect_to @fortune, notice: 'Fortune was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @fortune = Fortune.find(params[:id])
    @fortune.destroy

    respond_to do |format|
      format.html { redirect_to fortunes_url }
    end
  end
end
