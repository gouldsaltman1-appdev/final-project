class LoansController < ApplicationController
  def index
    @loans = Loan.all

    render("loan_templates/index.html.erb")
  end

  def show
    @loan = Loan.find(params.fetch("id_to_display"))

    render("loan_templates/show.html.erb")
  end

  def new_form
    render("loan_templates/new_form.html.erb")
  end

  def create_row
    @loan = Loan.new

    @loan.equipment_id = params.fetch("equipment_id")
    @loan.borrower_id = params.fetch("borrower_id")
    @loan.owner_id = params.fetch("owner_id")
    @loan.start_time = params.fetch("start_time")
    @loan.end_time = params.fetch("end_time")
    @loan.pickupdropoff_location = params.fetch("pickupdropoff_location")

    if @loan.valid?
      @loan.save

      redirect_to("/loans", :notice => "Loan created successfully.")
    else
      render("loan_templates/new_form.html.erb")
    end
  end

  def edit_form
    @loan = Loan.find(params.fetch("prefill_with_id"))

    render("loan_templates/edit_form.html.erb")
  end

  def update_row
    @loan = Loan.find(params.fetch("id_to_modify"))

    @loan.equipment_id = params.fetch("equipment_id")
    @loan.borrower_id = params.fetch("borrower_id")
    @loan.owner_id = params.fetch("owner_id")
    @loan.start_time = params.fetch("start_time")
    @loan.end_time = params.fetch("end_time")
    @loan.pickupdropoff_location = params.fetch("pickupdropoff_location")

    if @loan.valid?
      @loan.save

      redirect_to("/loans/#{@loan.id}", :notice => "Loan updated successfully.")
    else
      render("loan_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @loan = Loan.find(params.fetch("id_to_remove"))

    @loan.destroy

    redirect_to("/loans", :notice => "Loan deleted successfully.")
  end
end
