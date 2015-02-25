class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)

    respond_to do |format|
      if @company.save
        redirect_to @company, notice: "Company Successfully Created!"
      else
        render :new
      end
    end
  end


private

def company_params
  params.require(:company).permit(:name, :catch_phrase, :suffix)

end
end
