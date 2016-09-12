require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get root_url
    assert_response :success
    assert_select "title", "Playful Minds Academy"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | Playful Minds Academy"
  end

  test "should get forms" do
    get static_pages_forms_url
    assert_response :success
    assert_select "title", "Forms | Playful Minds Academy"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | Playful Minds Academy"
  end

end