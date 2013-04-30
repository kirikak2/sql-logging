require 'test_helper'

class BookDetailsControllerTest < ActionController::TestCase
  setup do
    @book_detail = book_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_detail" do
    assert_difference('BookDetail.count') do
      post :create, book_detail: { book: @book_detail.book, detail: @book_detail.detail }
    end

    assert_redirected_to book_detail_path(assigns(:book_detail))
  end

  test "should show book_detail" do
    get :show, id: @book_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_detail
    assert_response :success
  end

  test "should update book_detail" do
    put :update, id: @book_detail, book_detail: { book: @book_detail.book, detail: @book_detail.detail }
    assert_redirected_to book_detail_path(assigns(:book_detail))
  end

  test "should destroy book_detail" do
    assert_difference('BookDetail.count', -1) do
      delete :destroy, id: @book_detail
    end

    assert_redirected_to book_details_path
  end
end
