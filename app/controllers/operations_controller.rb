class OperationsController < ApplicationController

  # Square
  def square_new
    render({ :template => "/ops/square_new"})
  end

  def square_results
    @inputs = params
    @result_name = "Square"
    @result = params.fetch("number").to_f ** 2
    render({ :template => "/ops/square_results" })
  end

  # Square root
  def square_root_new
    render({ :template => "/ops/square_root_new"})
  end

  def square_root_results
    @inputs = params
    @result_name = "Square Root"
    @result = params.fetch("number").to_f ** 0.5
    render({ :template => "/ops/square_root_results" })
  end

  # Payment
  def payment_new
    render({ :template => "/ops/payment_new" })
  end

  def payment_results
    @inputs = params # apr, years, principal
    apr_monthly = @inputs.fetch("apr").to_f / 100 / 12
    months = @inputs.fetch("years").to_i * 12
  
    numer = apr_monthly * @inputs[:principal].to_f
    denom = 1 - (1 + apr_monthly) ** (months * (-1))
    @result = numer / denom
  
    @result_name = "Payment"

    render({ :template => "/ops/payment_results" })
  end

  # Random
  def random_new
    render({ :template => "/ops/random_new" })
  end

  def random_results
    @inputs = params
    @result_name = "Random Number"
    min_input = params.fetch("minimum").to_f
    max_input = params.fetch("maximum").to_f
    @result = rand(min_input..max_input)
    render({ :template => "/ops/random_results" })
  end


end
