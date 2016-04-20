class Note3sController < ApplicationController
  before_action :set_note3, only: [:show, :update, :destroy]

  # GET /note3s
  # GET /note3s.json
  def index
    @note3s = Note3.all
  end

  # GET /note3s/1
  # GET /note3s/1.json
  def show
  end

  # POST /note3s
  # POST /note3s.json
  def create
    @note3 = Note3.new(note3_params)

    if @note3.save
      render :show, status: :created, location: @note3
    else
      render json: @note3.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /note3s/1
  # PATCH/PUT /note3s/1.json
  def update
    if @note3.update(note3_params)
      render :show, status: :ok, location: @note3
    else
      render json: @note3.errors, status: :unprocessable_entity
    end
  end

  # DELETE /note3s/1
  # DELETE /note3s/1.json
  def destroy
    @note3.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note3
      @note3 = Note3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note3_params
      params.require(:note3).permit(:title, :note)
    end
end
