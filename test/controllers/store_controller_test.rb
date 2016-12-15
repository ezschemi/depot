require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success

    # test for layout and content
    # '#' matches on id-attributes
    # '.' matches on class-attributes
    # else: matches on element names
    assert_select '#columns #side a', minimum: 4
    assert_select '#main .entry', 3 # ==> expect three books -> see fixtures!
    assert_select 'h3', 'Programming Ruby 1.9'
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

end
