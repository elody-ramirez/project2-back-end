# frozen_string_literal: true

class CreatedplayersController < ProtectedController
  before_action :set_createdplayer, only: %i[show update destroy]

  # GET /createdplayers
  def index
    @createdplayers = current_user.createdplayers.all

    render json: @createdplayers
  end

  # GET /createdplayers/1
  def show
    render json: @createdplayer
  end

  # POST /createdplayers
  def create
    @createdplayer = current_user.createdplayers.new(createdplayer_params)

    if @createdplayer.save
      render json: @createdplayer, status: :created, location: @createdplayer
    else
      render json: @createdplayer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /createdplayers/1
  def update
    if @createdplayer.update(createdplayer_params)
      render json: @createdplayer
    else
      render json: @createdplayer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /createdplayers/1
  def destroy
    @createdplayer.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_createdplayer
    @createdplayer = current_user.createdplayers.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def createdplayer_params
    params.require(:createdplayer).permit(:name, :rating, :position, :height, :user_id)
  end
end
