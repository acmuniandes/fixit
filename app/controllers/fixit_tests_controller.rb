class FixitTestsController < ApplicationController
  before_action :set_fixit_test, only: [:show, :edit, :update, :destroy]

  # GET /fixit_tests
  # GET /fixit_tests.json
  def index
    @fixit_tests = FixitTest.all
  end

  # GET /fixit_tests/1
  # GET /fixit_tests/1.json
  def show
  end

  # GET /fixit_tests/new
  def new
    @fixit_test = FixitTest.new
  end

  # GET /fixit_tests/1/edit
  def edit
  end

  # POST /fixit_tests
  # POST /fixit_tests.json
  def create
    @fixit_test = FixitTest.new(fixit_test_params)

    respond_to do |format|
      if @fixit_test.save
        format.html { redirect_to @fixit_test, notice: 'Fixit test was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fixit_test }
      else
        format.html { render action: 'new' }
        format.json { render json: @fixit_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fixit_tests/1
  # PATCH/PUT /fixit_tests/1.json
  def update
    respond_to do |format|
      if @fixit_test.update(fixit_test_params)
        format.html { redirect_to @fixit_test, notice: 'Fixit test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fixit_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fixit_tests/1
  # DELETE /fixit_tests/1.json
  def destroy
    @fixit_test.destroy
    respond_to do |format|
      format.html { redirect_to fixit_tests_url }
      format.json { head :no_content }
    end
  end

  def home

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fixit_test
      @fixit_test = FixitTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fixit_test_params
      params.require(:fixit_test).permit(:type, :details, :email, :location, :picture)
    end
end
