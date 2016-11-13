require 'test_helper'

class ClarifiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clarify = clarifies(:one)
  end

  test "should get index" do
    get clarifies_url
    assert_response :success
  end

  test "should get new" do
    get new_clarify_url
    assert_response :success
  end

  test "should create clarify" do
    assert_difference('Clarify.count') do
      post clarifies_url, params: { clarify: { content: @clarify.content, title: @clarify.title } }
    end

    assert_redirected_to clarify_url(Clarify.last)
  end

  test "should show clarify" do
    get clarify_url(@clarify)
    assert_response :success
  end

  test "should get edit" do
    get edit_clarify_url(@clarify)
    assert_response :success
  end

  test "should update clarify" do
    patch clarify_url(@clarify), params: { clarify: { content: @clarify.content, title: @clarify.title } }
    assert_redirected_to clarify_url(@clarify)
  end

  test "should destroy clarify" do
    assert_difference('Clarify.count', -1) do
      delete clarify_url(@clarify)
    end

    assert_redirected_to clarifies_url
  end
end
