require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/productss.json" #this makes the get request to my app, gets the data back
    assert_response 200 #make sure the respons is a '200' ex. not a 404 error etc.

    data = JSON.parse(response.body) #get the data from the request (the array with all the attributes and values)
    assert_equal Product.count, data.length #find the length of the array , do Product.count in the database and those 2 should be the same
  end                                     #this current syntax is just an example basic test being used
end                                       #so the length of my current array is 14, and in the database 'Product.count' is 14 so this test runs fine



 # test "the truth" do
  #   assert true
  # end