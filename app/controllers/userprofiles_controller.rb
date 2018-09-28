class UserprofilesController < ApplicationController
  before_action :set_userprofile, only: [:show, :edit, :update, :destroy]

  # GET /userprofiles
  # GET /userprofiles.json
  def index
    @userprofiles = Userprofile.all
  end

  # GET /userprofiles/1
  # GET /userprofiles/1.json
  def show
    @profile = Userprofile.find(params[:id])
      @current = Userprofile.find(params[:id])
  end

  # GET /userprofiles/new
  def new
    @userprofile = Userprofile.new
  end

  # GET /userprofiles/1/edit
  def edit
    @userprofile = current_user.userprofile
  end

  # POST /userprofiles
  # POST /userprofiles.json
  def create
  @userprofile = Userprofile.create! params.require(:userprofile).permit(:content)
    @userprofile = Userprofile.new(userprofile_params)
    @userprofile.image.attach(params[:userprofile][:image])
    respond_to do |format|
      if @userprofile.save
        format.html { redirect_to @userprofile, notice: 'Userprofile was successfully created.' }
        format.json { render :show, status: :created, location: @userprofile }
      else
        format.html { render :new }
        format.json { render json: @userprofile.errors, status: :unprocessable_entity }
      end
    end
  end
  # PATCH/PUT /userprofiles/1
  # PATCH/PUT /userprofiles/1.json
  def update
    @userprofile = current_user.userprofile
    respond_to do |format|
      if @userprofile.update(userprofile_params)
        format.html { redirect_to edit_userprofile_path, notice: 'Userprofile was successfully updated.' }
        format.json { render :edit, status: :ok, location: @userprofile }
      else
        format.html { render edit_userprofile_path, flash: { error: "Could not be updated!" } }
        format.json { render json: @userprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userprofiles/1
  # DELETE /userprofiles/1.json
  def destroy
    @userprofile.destroy
    respond_to do |format|
      format.html { redirect_to userprofiles_url, notice: 'Userprofile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userprofile
      @userprofile = Userprofile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userprofile_params
      params.require(:userprofile).permit(:name, :firstname, :age, :country, :image)
    end
end
