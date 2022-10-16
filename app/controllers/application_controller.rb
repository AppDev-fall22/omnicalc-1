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

    render({ :template => "calculation_templates/rand_results.html.erb"})
  end

  def blank_sqrt_form
    render({:template => "calculation_templates/sqrt_form.html.erb"})
  end

  def calculate_sqrt
    @user_num = params.fetch("user_sqrt_num").to_f
    @root = Math.sqrt(@user_num)

    render({:template => "calculation_templates/sqrt_results.html.erb"})
  end

end
