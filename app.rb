require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name] # Create the user_name instance variabgle and set it equal to the :name key of the PARAMS hash
    "Hello #{@user_name}!" # Output the @user_name instance variable to the front end
  end

  # Code your final two routes here:

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/multiply/:num1/:num2" do
    # Create an instance variable @product 
    # Set @product equal to 
      # Get the :num1 key from the Params Hash and convert it to an integer (since PARAM hash data is ALWAYS a string)
      # Get the :num2 key from the Params Hash and convert it to an integer
      # Multip,y these two values, and set @prodcut equal to the value
    # Return @product to the screen. 
    @product = params[:num1].to_i * params[:num2].to_i 
    "#{@product}"
end
end