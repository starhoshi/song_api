class Note2sController < ApplicationController
  before_action :set_note2, only: [:show, :edit, :update, :destroy]

  # GET /note2s
  # GET /note2s.json
  def index
    @note2s = Note2.all
  end

  # GET /note2s/1
  # GET /note2s/1.json
  def show
  end

  # GET /note2s/new
  def new
    @note2 = Note2.new
  end

  # GET /note2s/1/edit
  def edit
  end

  # POST /note2s
  # POST /note2s.json
  def create
    @note2 = Note2.new(note2_params)

    respond_to do |format|
      if @note2.save
        format.html { redirect_to @note2, notice: 'Note2 was successfully created.' }
        format.json { render :show, status: :created, location: @note2 }
      else
        format.html { render :new }
        format.json { render json: @note2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /note2s/1
  # PATCH/PUT /note2s/1.json
  def update
    respond_to do |format|
      if @note2.update(note2_params)
        format.html { redirect_to @note2, notice: 'Note2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @note2 }
      else
        format.html { render :edit }
        format.json { render json: @note2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /note2s/1
  # DELETE /note2s/1.json
  def destroy
    @note2.destroy
    respond_to do |format|
      format.html { redirect_to note2s_url, notice: 'Note2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note2
      @note2 = Note2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note2_params
      params.require(:note2).permit(:title, :note)
    end
end
