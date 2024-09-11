require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/products.json" #this makes the get request to my app, gets the data back
    assert_response 200 #make sure the respons is a '200' ex. not a 404 error etc.

    data = JSON.parse(response.body) #get the data from the request (the array with all the attributes and values)
    assert_equal Product.count, data.length #find the length of the array , do Product.count in the database and those 2 should be the same
  end                                       #this current syntax is just an example basic test being used   #so the length of my current array is 14, and in the database 'Product.count' is 14 so this test runs fine
                                            
  
    test "create" do
      assert_difference "Product.count", 1 do
        post "/products.json", params: { name: "lake", price: 500, image_url: "http:/jksdvknsdk", description: "nice" }
        assert_response 200
      end
    end      
    
    test "show" do
      get "/products/#{Product.first.id}.json"
      assert_response 200
  
      data = JSON.parse(response.body)
      assert_equal ["id", "name", "price", "image_url", "description", "created_at", "updated_at"], data.keys
    end

    test "update" do
      product = Product.first
      patch "/products/#{product.id}.json", params: { name: "Updated name" }
      assert_response 200
  
      data = JSON.parse(response.body)
      assert_equal "Updated name", data["name"]
    end
end                                     



 # test "the truth" do
  #   assert true
  # end

  #What is the point of tests? this seems like more work when I can just run it in httpie?
  # you need to test before you put something live
  
  # if your dealing with lots of data / routes/  or your app is really complicated sometimes you'll add one feature that will break some other part of your app 
  # that you had no idea that, that would effect. If you have tests for everything, when you add something new you can run all your tests, and see if you broke 
  # anything, and if you did you can find it and you can fix it.
  # BUT if you dont have those tests, anytime you add anything you're a little nervous that you broke something that you didnt realize.
  
  # backstop for sloppy people