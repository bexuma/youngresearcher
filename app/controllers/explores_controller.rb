class ExploresController < ApplicationController
  before_action :set_explore, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /explores
  # GET /explores.json
  def index
    @explores = Explore.all.paginate(page: params[:page], per_page: 10)
  end

  # GET /explores/1
  # GET /explores/1.json
  def show
  end

  # GET /explores/new
  def new
    @explore = Explore.new
  end

  # GET /explores/1/edit
  def edit
  end

  # POST /explores
  # POST /explores.json
  def create
    @explore = Explore.new(explore_params)

    respond_to do |format|
      if @explore.save
        format.html { redirect_to @explore, notice: 'Explore was successfully created.' }
        format.json { render :show, status: :created, location: @explore }
      else
        format.html { render :new }
        format.json { render json: @explore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /explores/1
  # PATCH/PUT /explores/1.json
  def update
    respond_to do |format|
      if @explore.update(explore_params)
        format.html { redirect_to @explore, notice: 'Explore was successfully updated.' }
        format.json { render :show, status: :ok, location: @explore }
      else
        format.html { render :edit }
        format.json { render json: @explore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /explores/1
  # DELETE /explores/1.json
  def destroy
    @explore.destroy
    respond_to do |format|
      format.html { redirect_to explores_url, notice: 'Explore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_explore
      @explore = Explore.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def explore_params
      params.require(:explore).permit(:title, :content, :slug)
    end
end
