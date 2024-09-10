require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "Product.count", -1 do
      delete "/products/#{Product.first.id}.json"
      assert_response 200
    end
  end
end



 # test "the truth" do
  #   assert true
  # end