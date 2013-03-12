class EndUsersController < ApplicationController
  # GET /end_users
  # GET /end_users.json
  def index
    @end_users = EndUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @end_users }
    end
  end

  # GET /end_users/1
  # GET /end_users/1.json
  def show
    @end_user = EndUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @end_user }
    end
  end

  # GET /end_users/new
  # GET /end_users/new.json
  def new
    @end_user = EndUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @end_user }
    end
  end

  # GET /end_users/1/edit
  def edit
    @end_user = EndUser.find(params[:id])
  end

  # POST /end_users
  # POST /end_users.json
  def create
    @end_user = EndUser.new(params[:end_user])

    respond_to do |format|
      if @end_user.save
        format.html { redirect_to @end_user, notice: 'End user was successfully created.' }
        format.json { render json: @end_user, status: :created, location: @end_user }
      else
        format.html { render action: "new" }
        format.json { render json: @end_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /end_users/1
  # PUT /end_users/1.json
  def update
    @end_user = EndUser.find(params[:id])

    respond_to do |format|
      if @end_user.update_attributes(params[:end_user])
        format.html { redirect_to @end_user, notice: 'End user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @end_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /end_users/1
  # DELETE /end_users/1.json
  def destroy
    @end_user = EndUser.find(params[:id])
    @end_user.destroy

    respond_to do |format|
      format.html { redirect_to end_users_url }
      format.json { head :no_content }
    end
  end
end
