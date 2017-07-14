class CourseMakersController < ApplicationController
  before_action :set_course_maker, only: [:show, :edit, :update, :destroy]

  # GET /course_makers
  # GET /course_makers.json
  def index
    @course_makers = CourseMaker.all
  end

  # GET /course_makers/1
  # GET /course_makers/1.json
  def show
  end

  # GET /course_makers/new
  def new
    @course_maker = CourseMaker.new
  end

  # GET /course_makers/1/edit
  def edit
  end

  # POST /course_makers
  # POST /course_makers.json
  def create
    @course_maker = CourseMaker.new(course_maker_params)

    respond_to do |format|
      if @course_maker.save
        format.html { redirect_to @course_maker, notice: 'Course maker was successfully created.' }
        format.json { render :show, status: :created, location: @course_maker }
      else
        format.html { render :new }
        format.json { render json: @course_maker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_makers/1
  # PATCH/PUT /course_makers/1.json
  def update
    respond_to do |format|
      if @course_maker.update(course_maker_params)
        format.html { redirect_to @course_maker, notice: 'Course maker was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_maker }
      else
        format.html { render :edit }
        format.json { render json: @course_maker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_makers/1
  # DELETE /course_makers/1.json
  def destroy
    @course_maker.destroy
    respond_to do |format|
      format.html { redirect_to course_makers_url, notice: 'Course maker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_maker
      @course_maker = CourseMaker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_maker_params
      params.require(:course_maker).permit(:course_id, :page_number, :page_heading, :page_content)
    end
end
