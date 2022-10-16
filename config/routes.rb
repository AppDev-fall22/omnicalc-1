Rails.application.routes.draw do

  get("/square/new", {:controller => "application", :action => "blank_square_form"})

  get("/square/results", {:controller => "application", :action => "calculate_square"})

  get("/random/results", {:controller => "applicatin", :action => "calculate_random"})

  get("/square_root/new", {:controller => "application", :action => "blank_sqrt_form"})

  get("/square_root/results", {:controller => "application", :action => "calculate_sqrt"})

  get("/payment/new", {:controller => "application", :action => "blank_payment_form"})

  get("/payment/results", {:controller => "application", :action => "calculate_payment"})

end
