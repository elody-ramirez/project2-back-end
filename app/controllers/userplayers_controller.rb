# frozen_string_literal: true

class UserplayersController < ApplicationController
  before_action :set_userplayer, only: %i[show update destroy]

  # GET /userplayers
  def index
    @userplayers = Userplayer.all

    render json: @userplayers
  end

  # GET /userplayers/1
  def show
    render json: @userplayer
  end

  # POST /userplayers
  def create
    @userplayer = Userplayer.new(userplayer_params)

    if @userplayer.save
      render json: @userplayer, status: :created, location: @userplayer
    else
      render json: @userplayer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /userplayers/1
  def update
    if @userplayer.update(userplayer_params)
      render json: @userplayer
    else
      render json: @userplayer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /userplayers/1
  def destroy
    @userplayer.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_userplayer
    @userplayer = Userplayer.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def userplayer_params
    params.require(:userplayer).permit(:user_id, :player_id)
  end
end
