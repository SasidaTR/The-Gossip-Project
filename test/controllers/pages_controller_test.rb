require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  # test "the truth" do
  #   assert true
  # end
=======
  test "should get secret_method_welcome" do
    get pages_secret_method_welcome_url
    assert_response :success
  end
>>>>>>> Ajout de tout
end
