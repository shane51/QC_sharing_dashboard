require 'test_helper'

class PdfviewsControllerTest < ActionController::TestCase
  setup do
    @pdfview = pdfviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pdfviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pdfview" do
    assert_difference('Pdfview.count') do
      post :create, pdfview: { doctype: @pdfview.doctype, name: @pdfview.name, path: @pdfview.path }
    end

    assert_redirected_to pdfview_path(assigns(:pdfview))
  end

  test "should show pdfview" do
    get :show, id: @pdfview
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pdfview
    assert_response :success
  end

  test "should update pdfview" do
    patch :update, id: @pdfview, pdfview: { doctype: @pdfview.doctype, name: @pdfview.name, path: @pdfview.path }
    assert_redirected_to pdfview_path(assigns(:pdfview))
  end

  test "should destroy pdfview" do
    assert_difference('Pdfview.count', -1) do
      delete :destroy, id: @pdfview
    end

    assert_redirected_to pdfviews_path
  end
end
