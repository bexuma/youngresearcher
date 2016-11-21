require 'test_helper'

class PoemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poem = poems(:one)
  end

  test "should get index" do
    get poems_url
    assert_response :success
  end

  test "should get new" do
    get new_poem_url
    assert_response :success
  end

  test "should create poem" do
    assert_difference('Poem.count') do
      post poems_url, params: { poem: { content: @poem.content, title: @poem.title } }
    end

    assert_redirected_to poem_url(Poem.last)
  end

  test "should show poem" do
    get poem_url(@poem)
    assert_response :success
  end

  test "should get edit" do
    get edit_poem_url(@poem)
    assert_response :success
  end

  test "should update poem" do
    patch poem_url(@poem), params: { poem: { content: @poem.content, title: @poem.title } }
    assert_redirected_to poem_url(@poem)
  end

  test "should destroy poem" do
    assert_difference('Poem.count', -1) do
      delete poem_url(@poem)
    end

    assert_redirected_to poems_url
  end
end
