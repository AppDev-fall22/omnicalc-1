class ApplicationController < ActionController::Base
  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb" })
  end

  def calculate_square
    @num = params.fetch("elephant").to_f
    @square_of_num = @num * @num

    render({ :template => "calculation_templates/square_results.html.erb" })
  end

  def calculate_random
    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @result = rand(@lower..@upper)

    render({ :template => "calculation_templates/rand_results.html.erb" })
  end

  def blank_sqrt_form
    render({ :template => "calculation_templates/sqrt_form.html.erb" })
  end

  def calculate_sqrt
    @user_num = params.fetch("user_sqrt_num").to_f
    @root = Math.sqrt(@user_num)

    render({ :template => "calculation_templates/sqrt_results.html.erb" })
  end

  def blank_payment_form
    render({ :template => "calculation_templates/payment_form.html.erb" })
  end

  def calculate_payment
    @user_apr = params.fetch("user_apr").to_f / 100
    @user_years = params.fetch("user_years").to_f
    @user_principal = params.fetch("user_principal").to_f

    months = @user_years * 12
    r = @user_apr / 12.to_f

    numerator = r * @user_principal
    denominator = 1 - ((1 + r) ** (-months))

    @monthly_pay = numerator / denominator
    @formatted_apr = (@user_apr * 100).to_s( :percentage, { :precision => 4 } )
    render({ :template => "calculation_templates/payment_results.html.erb" })
  end

  def blank_random_form
    render({ :template => "calculation_templates/random_form.html.erb" })
  end
end
