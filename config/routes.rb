Rails.application.routes.draw do
  get("/square/new", { :controller => "operations", :action => "square_new"})
  get("/square/results", { :controller => "operations", :action => "square_results" })

  get("/square_root/new", { :controller => "operations", :action => "square_root_new"})
  get("/square_root/results", { :controller => "operations", :action => "square_root_results" })

  get("/payment/new", { :controller => "operations", :action => "payment_new"})
  get("/payment/results", { :controller => "operations", :action => "payment_results" })

  get("/random/new", { :controller => "operations", :action => "random_new"})
  get("/random/results", { :controller => "operations", :action => "random_results" })



end
