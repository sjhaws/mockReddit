class SubsController < ApplicationController
  before_action :set_sub, only: [:show, :update, :edit, :destroy]

  def index
    @subs = Sub.all
  end

  def show
  end

  def new
    @sub = Sub.new
  end

  def edit
  end

  def create
    @sub = Sub.new(sub_params)

    if @sub.save
      redirect_to sub_path(@sub)
    else
      render :new
    end
  end

  def update
    if @sub.update(sub_params)
      redirect_to sub_path(@sub)
    else
      render :edit
    end
  end

  def destroy
    @sub.destroy
    redirect_to subs_path
  end

  private
    def set_sub
      @sub = Sub.find(params[:id])
    end

    def sub_params
      params.require(:sub).permit(:name)
    end
end
# CRUD

# Create = POST
# Read = GET
# Update = PUT
# Delete = DELETE

# index => @people = Person.all
# show => @person = Person.find(params[:id])
# new => @person = Person.new
# edit => @person = Person.find(params[:id])

# create => Person.create(person_params)
# update => Person.update(person_params)
# destroy => Pereson.find(params[:id]).destroy
