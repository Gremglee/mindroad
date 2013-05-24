class RoadsController < ApplicationController
  # GET /roads
  # GET /roads.json
  def index
    @roads = Road.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @roads }
    end
  end

  # GET /roads/1
  # GET /roads/1.json
  def show
    @road = Road.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @road }
    end
  end

  # GET /roads/new
  # GET /roads/new.json
  def new
    @road = Road.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @road }
    end
  end

  # GET /roads/1/edit
  def edit
    @road = Road.find(params[:id])
  end

  # POST /roads
  # POST /roads.json
  def create
    @road = Road.new(params[:road])

    respond_to do |format|
      if @road.save
        format.html { redirect_to @road, notice: 'Road was successfully created.' }
        format.json { render json: @road, status: :created, location: @road }
      else
        format.html { render action: "new" }
        format.json { render json: @road.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /roads/1
  # PUT /roads/1.json
  def update
    @road = Road.find(params[:id])

    respond_to do |format|
      if @road.update_attributes(params[:road])
        format.html { redirect_to @road, notice: 'Road was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @road.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roads/1
  # DELETE /roads/1.json
  def destroy
    @road = Road.find(params[:id])
    @road.destroy

    respond_to do |format|
      format.html { redirect_to roads_url }
      format.json { head :no_content }
    end
  end

  def map
    @road_columns = Column.where(:road_id => params[:id]).order("index_number_in_road")
    respond_to do |format|
      format.html
      format.json
    end
  end

  def delete_unit
    @column_pre = Column.where(:id => params[:id]).write_attribute(params[:line], '0')

    debug @column_pre

    @column_pre.each do |c|
      if c.first_line == params[:unit_id]
        c.update_attribute('first_line', '0')
      end
      if c.second_line == params[:unit_id]
        c.update_attribute('second_line', '0')
      end
      if c.third_line == params[:unit_id]
        c.update_attribute('third_line', '0')
      end
      if c.fourth_line == params[:unit_id]
        c.update_attribute('fourth_line', '0')
      end
    end
    
    debug @column_pre
    respond_to do |format|
     format.html { redirect_to :controller => "roads", :action => "map", :id => params[:unit_id] }
     format.json
    end
  end

end
