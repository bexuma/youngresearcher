class ClarifiesController < ApplicationController
  before_action :set_clarify, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /clarifies
  # GET /clarifies.json
  def index
    @clarifies = Clarify.all.paginate(page: params[:page], per_page: 10)
  end

  # GET /clarifies/1
  # GET /clarifies/1.json
  def show
  end

  # GET /clarifies/new
  def new
    @clarify = Clarify.new
  end

  # GET /clarifies/1/edit
  def edit
  end

  # POST /clarifies
  # POST /clarifies.json
  def create
    @clarify = Clarify.new(clarify_params)

    respond_to do |format|
      if @clarify.save
        format.html { redirect_to @clarify, notice: 'Clarify was successfully created.' }
        format.json { render :show, status: :created, location: @clarify }
      else
        format.html { render :new }
        format.json { render json: @clarify.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clarifies/1
  # PATCH/PUT /clarifies/1.json
  def update
    respond_to do |format|
      if @clarify.update(clarify_params)
        format.html { redirect_to @clarify, notice: 'Clarify was successfully updated.' }
        format.json { render :show, status: :ok, location: @clarify }
      else
        format.html { render :edit }
        format.json { render json: @clarify.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clarifies/1
  # DELETE /clarifies/1.json
  def destroy
    @clarify.destroy
    respond_to do |format|
      format.html { redirect_to clarifies_url, notice: 'Clarify was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clarify
      @clarify = Clarify.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clarify_params
      params.require(:clarify).permit(:title, :content, :slug)
    end
end
