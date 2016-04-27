require 'test_helper'

class AudioUploadsControllerTest < ActionController::TestCase
  setup do
    @audio_upload = audio_uploads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:audio_uploads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create audio_upload" do
    assert_difference('AudioUpload.count') do
      post :create, audio_upload: { artist_name: @audio_upload.artist_name, track_name: @audio_upload.track_name }
    end

    assert_redirected_to audio_upload_path(assigns(:audio_upload))
  end

  test "should show audio_upload" do
    get :show, id: @audio_upload
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @audio_upload
    assert_response :success
  end

  test "should update audio_upload" do
    patch :update, id: @audio_upload, audio_upload: { artist_name: @audio_upload.artist_name, track_name: @audio_upload.track_name }
    assert_redirected_to audio_upload_path(assigns(:audio_upload))
  end

  test "should destroy audio_upload" do
    assert_difference('AudioUpload.count', -1) do
      delete :destroy, id: @audio_upload
    end

    assert_redirected_to audio_uploads_path
  end
end
