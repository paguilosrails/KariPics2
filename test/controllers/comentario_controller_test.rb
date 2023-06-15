require "test_helper"

class ComentarioControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get comentario_index_url
    assert_response :success
  end
end
