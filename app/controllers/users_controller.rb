class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    Meter.create(id:(3*current_user.id-2),value:10000,type_id:1,user_id:current_user.id,valueStartMonth:9000)
    Meter.create(id:(3*current_user.id-1),value:15000,type_id:2,user_id:current_user.id,valueStartMonth:14500)
    Meter.create(id:(3*current_user.id),value:20000,type_id:3,user_id:current_user.id,valueStartMonth:19300)
    Limite.create(id:(3*current_user.id-2),value:50,meter_id:(3*current_user.id-2))
    Limite.create(id:(3*current_user.id-1),value:50,meter_id:(3*current_user.id-1))
    Limite.create(id:(3*current_user.id),value:50,meter_id:(3*current_user.id))
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :encrypted_password, :confirmation_token, :remember_token)
    end
end
