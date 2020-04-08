class WidgetsController < ApplicationController
  before_action :find_widget, except: [:index, :new, :create]

  def index
    @widgets = Widget.all
  end

  def show
  end

  def new
    @widget = Widget.new
  end

  def edit
  end

  def create
    @widget = Widget.new(params[:widget])
    if @widget.save
      flash[:success] = "Widget successfully created"
      redirect_to @widget
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def update
    if @widget.update_attributes(params[:widget])
      flash[:success] = "Widget was successfully updated"
      redirect_to @widget
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end

  def destroy
    if @widget.destroy
      flash[:success] = "Widget was successfully deleted"
      redirect_to @widgets_path
    else
      flash[:error] = "Something went wrong"
      redirect_to @widgets_path
    end
  end

  private

    def find_widget
      @widget = Widget.find(params[:id])
    end

end
