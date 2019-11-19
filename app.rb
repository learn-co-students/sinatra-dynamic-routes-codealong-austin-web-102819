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
    # Psuedo code for flatiron's solution
    # Create an instance variable @product 
    # Set @product equal to 
      # Get the :num1 key from the Params Hash and convert it to an integer (since PARAM hash data is ALWAYS a string)
      # Get the :num2 key from the Params Hash and convert it to an integer
      # Multip,y these two values, and set @prodcut equal to the value
    # Return @product to the screen. 

    # Flatiron's solution
    # @product = params[:num1].to_i * params[:num2].to_i 
    # "#{@product}"

    #My solution: 
    @num1= params[:num1].to_i # Set @num1 equal to the :num1 key of the params hash and convert it to an integer
    @num2=params[:num2].to_i # Set @num2 equal to the :num2 key of the params and convert it to an integer
    @product= @num1 * @num2 # This is to run the ruby to get our result.
    @product.to_s # Return the product result
    
    # Just like in standard Ruby code, whatever is executed last will be returned
    # In this case, it is returned to the front end. 
end
end