class EquipmentController < ApplicationController
  def index
    @equipment = Equipment.all

    render("equipment_templates/index.html.erb")
  end

  def show
    @equipment = Equipment.find(params.fetch("id_to_display"))

    render("equipment_templates/show.html.erb")
  end

  def new_form
    render("equipment_templates/new_form.html.erb")
  end

  def create_row
    @equipment = Equipment.new

    @equipment.title = params.fetch("title")
    @equipment.description = params.fetch("description")
    @equipment.image = params.fetch("image")
   # @equipment.owner_id = params.fetch("owner_id")
    @equipment.categories_id = params.fetch("categories_id")

    if @equipment.valid?
      @equipment.save

      redirect_to("/equipment", :notice => "Equipment created successfully.")
    else
      render("equipment_templates/new_form.html.erb")
    end
  end

  def edit_form
    @equipment = Equipment.find(params.fetch("prefill_with_id"))

    render("equipment_templates/edit_form.html.erb")
  end

  def update_row
    @equipment = Equipment.find(params.fetch("id_to_modify"))

    @equipment.title = params.fetch("title")
    @equipment.description = params.fetch("description")
    @equipment.image = params.fetch("image")
    @equipment.owner_id = params.fetch("owner_id")
    @equipment.categories_id = params.fetch("categories_id")

    if @equipment.valid?
      @equipment.save

      redirect_to("/equipment/#{@equipment.id}", :notice => "Equipment updated successfully.")
    else
      render("equipment_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @equipment = Equipment.find(params.fetch("id_to_remove"))

    @equipment.destroy

    redirect_to("/equipment", :notice => "Equipment deleted successfully.")
  end
end
