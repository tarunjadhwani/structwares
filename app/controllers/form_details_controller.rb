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

  def print
    @user = User.find(params[:id])
    @formdetail = @user.microposts.last
  end

private

  def formdetail_params
  	params.require(:form_detail).permit(:name, :bank, :ref_no, :location, 
  		:valuation_place, :type_of_valuation, :flat_no, :site_visit_date, 
  		:ownership, :valuation_rate, :area_sq_mtrs, :no_of_owners)
  end

end

