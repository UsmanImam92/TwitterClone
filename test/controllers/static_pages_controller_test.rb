require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase


  # Tests are automatically generated , one for each controller action
  # that we included in the command line.
  # Each test simply gets a URL and verifies (vai assertion) that the
  # result is a success.
  # The use of get indicates that our tests expects the Home,Help,About & Contact
  # to be ordinary web pages, accessed using a GET request.
  # The response :success is a representation of HTTP status_code.

  # For a Test-Driven Development , write a Failing test first,
  # write the application code needed to get it pass,
  # refactor the code if necessary. (RED-GREEN-REFACTOR CYCLE)

  def setup
    @base_title = "TwitterClone"
  end



  test "should get home" do        # Test the Home page by issuing a GET request
    get :home                      # to the Static Pages home URL and then make sure
    assert_response :success       # we recieve a 'success' status code on response

    #  the code below checks for the presence of a <title>
    #  tag containing the string “Home | TwitterClone"
    #  the assert_select lets us test for the presence of
    #  a particular HTML tag.
    assert_select "title", "Home | #{@base_title}"
  end



  test "should get help" do
    get :help
    assert_response :success

    #  the code below checks for the presence of a <title>
    #  tag containing the string “Help | TwitterClone"
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get :about
    assert_response :success

    #  the code below checks for the presence of a <title>
    #  tag containing the string “About | TwitterClone"
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get :contact
    assert_response :success

    #  the code below checks for the presence of a <title>
    #  tag containing the string “Contact | TwitterClone"
    assert_select "title", "Contact | #{@base_title}"
  end

  test "should get Terms of Conditions" do
    get :terms
    assert_response :success

    #  the code below checks for the presence of a <title>
    #  tag containing the string “Terms | TwitterClone"
    assert_select "title", "Terms | #{@base_title}"
  end

  test "should get root" do
    get :home
    assert_response :success
  end

end
