module Api::V1
  class BottlesController < ApiController
    before_action :authenticate_v1_user!, except: [:index, :show]

    before_action :set_bottle, only: [:show, :update, :destroy]

    # GET /v1/bottles
    def index
      @bottles = Bottle.all

      render json: @bottles
    end

    # GET /v1/bottles/1
    def show
      render json: @bottle
    end

    # POST /v1/bottles
    def create
      @bottle = Bottle.new(bottle_params)

      if @bottle.save
        render json: @bottle, status: :created, location: @bottle
      else
        render json: @bottle.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /v1/bottles/1
    def update
      if @bottle.update(bottle_params)
        render json: @bottle
      else
        render json: @bottle.errors, status: :unprocessable_entity
      end
    end

    # DELETE /v1/bottles/1
    def destroy
      @bottle.destroy
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_bottle
      @bottle = Bottle.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bottle_params
      params.require(:bottle).permit(:sender_id, :content)
    end
  end
end
