
class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.order(:full_name)
  end

  def missing_email
    @customers = Customer.where(email_address: [ nil, "" ])
  end

  def show
    @customer = Customer.find_by(id: params[:id])
    if @customer.nil?
    redirect_to customers_path, alert: "Customer not found."
    end
  end
end
