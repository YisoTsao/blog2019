class HandiesController < ApplicationController
  before_action :set_handy, only: [:show, :edit, :update, :destroy ]
  before_action :authenticate_user! , only: [:new, :create, :edit, :update, :destroy, :import]
  
  def index
    if params[:search]
      @handies = Handy.where('ftype LIKE ? OR pccitem LIKE ? OR receivedate LIKE ? OR startdate LIKE ? OR
				finishdate LIKE ? OR schedule LIKE ? OR qual LIKE ? OR solution LIKE ? OR capacity LIKE ?',
				"%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%",
				"%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%").paginate(page:params[:page])
    else
      @handies = Handy.all
      respond_to do |format|
        format.html
        format.json{ render json: @handies }
        format.csv { send_data @handies.to_csv }
        format.xls { send_data @handies.to_csv }
      end
       @handies = Handy.paginate(page:params[:page], per_page: 30 )
    end

    # search = params[:search].present? ? params[:search] : nil
    # @handies = if search
    #   #Handy.where("capacity LIKE ? OR qual LIKE ?", "%#{search}%", "%#{search}%")
    #   Handy.search(search)
    # else
    #   Handy.all
    # end
  end

  def autocomplete
    render json: Handy.search(params[:query], {
      fields: ["solution", "capacity", "ftype", "schedule", "finishdate", "qual"],
      match: :word_start,
      limit: 10,
      load: false,
      misspellings: {below: 10}
    }).map(&:ftype)
  end



  def show
    respond_to do |format|
      format.html
      format.json
      format.pdf  { render template: 'handies/report' , pdf: 'Report', layout: 'pdf.html', location: @handy }

    end
  end

  def new
    @handy = Handy.new
  end
  
  def edit
  end

  def create
  	@handy = current_user.handies.build(handy_params)
    respond_to do |format|
      @handy.user = current_user
      if @handy.save
        format.html { redirect_to @handy}
        format.json { render :show, status: :created, location: @handy }
      else
        format.html { render :new }
        format.json { render json: @handy.errors, status: :unprocessable_entity }
      end
    end
  end

  def import
    Handy.import(params[:file])
    redirect_to handies_url, notice: "Handies imported."
  end
  
  def update
    respond_to do |format|
      if @handy.update(handy_params)
        format.html { redirect_to @handy}
        format.json { render :show, status: :ok, location: @handy }
      else
        format.html { render :edit }
        format.json { render json: @handy.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @handy.destroy
    respond_to do |format|
      format.html { redirect_to handies_url }
      format.json { head :no_content }
    end
  end

  private
  def set_handy
    @handy = Handy.find(params[:id])
  end

  def handy_params
    params.require(:handy).permit(:item, :pccitem, :receivedate, :startdate, :finishdate,
    :solution, :schedule, :capacity, :qual, :read, :write, :owner, :prodname, :prodpn, :desc,
    :fwvversion, :ftype, :pcbvers, :testres , :expl, :rpname, :rpdate, :approvename, :remark,
    :pc1os, :pc1mb, :pc1vendor, :pc1chip, :pc1bios, :pc2os, :pc2mb, :pc2vendor, :pc2chip, :pc2bios,
    :pc3os, :pc3mb, :pc3vendor, :pc3chip, :pc3bios, :pc4os, :pc4mb, :pc4vendor, :pc4chip, :pc4bios,
    :pc5os, :pc5mb, :pc5vendor, :pc5chip, :pc5bios, :pc1basic, :pc1comp32, :pc1burnin,
    :pc2basic, :pc2comp32, :pc2burnin,:pc3basic, :pc3comp32, :pc3burnin, :pc4basic, :pc5basic,
    :pc1fat, :pc1fat32, :pc1ntfs, :pc1exfat, :pc1result,:pc2fat, :pc2fat32, :pc2ntfs, :pc2exfat, :pc2result,
    :pc3fat, :pc3fat32, :pc3ntfs, :pc3exfat, :pc3result, :pc4ext34, :pc4result, :pc5result,
    :pc1led, :pc2led, :pc3led, :pc4led, :pc5led, :image1, :image2, :image3, :image4)
  end
end
