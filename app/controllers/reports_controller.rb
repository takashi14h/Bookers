class ReportsController < ApplicationController
  def top
  end

  def index
  	@report = Report.new
  	@reports = Report.all
  end

  def create
  	@report = Report.new(report_params)
  	if @report.save
	  	flash[:notice] = "Book was successfully created."
	  	redirect_to report_path(@report)
  	else
  		@reports = Report.all
  		render "index"
  	end
  end

  def show
  	@report = Report.find(params[:id])
  end

  def edit
  	@report = Report.find(params[:id])
  end

  def update
  	@report = Report.find(params[:id])
  	if @report.update(report_params)
  		flash[:notice] = "Book was successfully updated."
  	    redirect_to report_path(@report.id)
  	else
  		render "edit"
  	end
  end

  def destroy
  	report = Report.find(params[:id])
  	report.destroy
  	redirect_to reports_path
  end

  private

  def report_params
  	params.require(:report).permit(:title, :body)
  end
end
