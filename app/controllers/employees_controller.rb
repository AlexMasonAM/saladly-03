class EmployeesController < ApplicationController

  before_action :authorize # call the authorize method before every action in this controller

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      flash[:success] = "Employee saved!"
      redirect_to employees_path
    else
      flash.now[:danger] = @employee.errors.full_messages.to_sentence
      render :new
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])

    if @employee.update(employee_params)
      redirect_to employees_path
    else
      render :edit
    end
  end

private

  def employee_params
    params.require(:employee).permit(:name, :hourly_wage, :address)
  end
end
