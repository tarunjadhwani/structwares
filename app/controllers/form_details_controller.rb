class FormDetailsController < ApplicationController

  def new
  	@formdetail = FormDetail.new
  end
  def create
  	@formdetail = FormDetail.new(formdetail_params)
  	if @formdetail.save
  		FormDetail.disable_button = true
  		redirect_to trydemo_path
  		flash[:success] = "Details submitted successfully!"
  	else
  		render 'new'
  	end
  end

  def show
    @formdetail = FormDetail.last
    render layout: "admin_layout"
  end

  def download
    send_file "#{RAILS_ROOT}/#{params[:file_name]}"
  end
private

  def formdetail_params
  	params.require(:form_detail).permit(:owner_name, :valuer_name,:agreed_date,
      :ref_no, :bank, :situated_at, :location, :valuation_place, :area_type, :property_type,
      :site_visit_date, :ownership, :valuation_rate, :build_up_area)
  end
end
