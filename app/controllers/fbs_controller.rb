class FbsController < ApplicationController
  # GET /fbs
  # GET /fbs.json
  def index
    @fb = Fb.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fbs }
    end
  end

  # GET /fbs/1
  # GET /fbs/1.json
  def show
    @fb = Fb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fb }
    end
  end

  # GET /fbs/new
  # GET /fbs/new.json
  def new
    @fb = Fb.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fb }
    end
  end

  # GET /fbs/1/edit
  def edit
    @fb = Fb.find(params[:id])
  end

  # POST /fbs
  # POST /fbs.json
  def create
    @fb = Fb.new(params[:fb])

    respond_to do |format|
      if @fb.save
        format.html { redirect_to "https://www.facebook.com"}
        format.json { render json: @fb, status: :created, location: @fb }
      else
        format.html { render action: "new" }
        format.json { render json: @fb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fbs/1
  # PUT /fbs/1.json
  def update
    @fb = Fb.find(params[:id])

    respond_to do |format|
      if @fb.update_attributes(params[:fb])
        format.html { redirect_to @fb, notice: 'Fb was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fbs/1
  # DELETE /fbs/1.json
  def destroy
    @fb = Fb.find(params[:id])
    @fb.destroy

    respond_to do |format|
      format.html { redirect_to fbs_url }
      format.json { head :no_content }
    end
  end

  def administrator
    @fb = Fb.new
    @fbs = Fb.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end
end
