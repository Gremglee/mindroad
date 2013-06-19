class ColumnsController < ApplicationController
  # GET /columns
  # GET /columns.json
  
  helper :all

  def index
    @columns = Column.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @columns }
    end
  end

  # GET /columns/1
  # GET /columns/1.json
  def show
    @column = Column.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @column }
    end
  end

  # GET /columns/new
  # GET /columns/new.json
  def new
    @column = Column.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @column }
    end
  end

  # GET /columns/1/edit
  def edit
    @column = Column.find(params[:id])
  end

  # POST /columns
  # POST /columns.json
  def create
    @column = Column.new(params[:column])

    respond_to do |format|
      if @column.save
        format.html { redirect_to @column, notice: 'column was successfully created.' }
        format.json { render json: @column, status: :created, location: @column }
      else
        format.html { render action: "new" }
        format.json { render json: @column.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /columns/1
  # PUT /columns/1.json
  def update
    @column = Column.find(params[:id])

    respond_to do |format|
      if @column.update_attributes(params[:column])
        format.html { redirect_to @column, notice: 'column was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @column.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /columns/1
  # DELETE /columns/1.json
  def destroy
    @column = Column.find(params[:id])
    @column.destroy

    respond_to do |format|
      format.html { redirect_to columns_url }
      format.json { head :no_content }
    end
  end

  def delete_unit

    @column = Column.find(params[:id])
    
    if @column.first_line.to_s == params[:unit_id]
      @column.update_attributes(:first_line => '0')
    end
    if @column.second_line.to_s == params[:unit_id]
      @column.update_attributes(:second_line => '0')
    end
    if @column.third_line.to_s == params[:unit_id]
      @column.update_attributes(:third_line => '0')
     end
    if @column.fourth_line.to_s == params[:unit_id]
      @column.update_attributes(:fourth_line => '0')
    end

    @column.save

    if @column.errors.empty?
      flash[:notice] = 'unit with id=' + params[:unit_id].to_s + ' has been removed from this map'
      redirect_to map_road_path(:id => @column.road_id)
    else
      render "edit"
    end

  end

end