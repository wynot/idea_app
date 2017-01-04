class UserPlaceListsController < ApplicationController
  before_action :set_user_place_list, only: [:show, :edit, :update, :destroy]

  # GET /user_place_lists
  # GET /user_place_lists.json
  def index
    @user_place_lists = UserPlaceList.all
  end

  # GET /user_place_lists/1
  # GET /user_place_lists/1.json
  def show
  end

  # GET /user_place_lists/new
  def new
    @user_place_list = UserPlaceList.new
  end

  # GET /user_place_lists/1/edit
  def edit
  end

  # POST /user_place_lists
  # POST /user_place_lists.json
  def create
    @user_place_list = UserPlaceList.new(user_place_list_params)

    respond_to do |format|
      if @user_place_list.save
        format.html { redirect_to @user_place_list, notice: 'User place list was successfully created.' }
        format.json { render :show, status: :created, location: @user_place_list }
      else
        format.html { render :new }
        format.json { render json: @user_place_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_place_lists/1
  # PATCH/PUT /user_place_lists/1.json
  def update
    respond_to do |format|
      if @user_place_list.update(user_place_list_params)
        format.html { redirect_to @user_place_list, notice: 'User place list was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_place_list }
      else
        format.html { render :edit }
        format.json { render json: @user_place_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_place_lists/1
  # DELETE /user_place_lists/1.json
  def destroy
    @user_place_list.destroy
    respond_to do |format|
      format.html { redirect_to user_place_lists_url, notice: 'User place list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_place_list
      @user_place_list = UserPlaceList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_place_list_params
      params.fetch(:user_place_list, {})
    end
end
