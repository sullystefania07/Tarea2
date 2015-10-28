class MyScaffoldsController < ApplicationController
  before_action :set_my_scaffold, only: [:show, :edit, :update, :destroy]

  # GET /my_scaffolds
  # GET /my_scaffolds.json
  def index
    @my_scaffolds = MyScaffold.all
  end

  # GET /my_scaffolds/1
  # GET /my_scaffolds/1.json
  def show
  end

  # GET /my_scaffolds/new
  def new
    @my_scaffold = MyScaffold.new
  end

  # GET /my_scaffolds/1/edit
  def edit
  end

  # POST /my_scaffolds
  # POST /my_scaffolds.json
  def create
    @my_scaffold = MyScaffold.new(my_scaffold_params)

    respond_to do |format|
      if @my_scaffold.save
        format.html { redirect_to @my_scaffold, notice: 'My scaffold was successfully created.' }
        format.json { render :show, status: :created, location: @my_scaffold }
      else
        format.html { render :new }
        format.json { render json: @my_scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_scaffolds/1
  # PATCH/PUT /my_scaffolds/1.json
  def update
    respond_to do |format|
      if @my_scaffold.update(my_scaffold_params)
        format.html { redirect_to @my_scaffold, notice: 'My scaffold was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_scaffold }
      else
        format.html { render :edit }
        format.json { render json: @my_scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_scaffolds/1
  # DELETE /my_scaffolds/1.json
  def destroy
    @my_scaffold.destroy
    respond_to do |format|
      format.html { redirect_to my_scaffolds_url, notice: 'My scaffold was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_scaffold
      @my_scaffold = MyScaffold.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_scaffold_params
      params.require(:my_scaffold).permit(:my_string, :my_integer, :my_datetime, :my_boolean)
    end
end
