class CustomersController < ApplicationController
  def index
    @customers = Customer.all
    @customers = Customer.page(params[:page])
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      # =>  成功
      redirect_to @customer
      else
      # =>  失敗
      render :new
    end
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      # => 成功
      redirect_to @customer
    else
      render :edit
    end
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to @customer
  end

  private

  def customer_params
    params.require(:customer).permit(
      :family_name,
      :given_name,
      :email
      )
  end
end