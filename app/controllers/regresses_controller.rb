class RegressesController < ApplicationController
  # GET /regresses
  # GET /regresses.json
  def index
    @search = Search.new(Regress, params[:search])
    @regresses = @search.run

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @regresses }
    end
  end

  # GET /regresses/1
  # GET /regresses/1.json
  def show
    @regress = Regress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @regress }
    end
  end

  # GET /regresses/new
  # GET /regresses/new.json
  def new
    @regress = Regress.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @regress }
    end
  end

  # GET /regresses/1/edit
  def edit
    @regress = Regress.find(params[:id])
  end

  # POST /regresses
  # POST /regresses.json
  def create
    @regress = Regress.new(params[:regress])

    respond_to do |format|
      if @regress.save
        format.html { redirect_to @regress, notice: 'Regress was successfully created.' }
        format.json { render json: @regress, status: :created, location: @regress }
      else
        format.html { render action: "new" }
        format.json { render json: @regress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /regresses/1
  # PUT /regresses/1.json
  def update
    @regress = Regress.find(params[:id])

    respond_to do |format|
      if @regress.update_attributes(params[:regress])
        format.html { redirect_to @regress, notice: 'Regress was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @regress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regresses/1
  # DELETE /regresses/1.json
  def destroy
    @regress = Regress.find(params[:id])
    @regress.destroy

    respond_to do |format|
      format.html { redirect_to regresses_url }
      format.json { head :no_content }
    end
  end
end
