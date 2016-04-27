class AudioUploadsController < ApplicationController
  before_action :set_audio_upload, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]
  
  # GET /audio_uploads
  def index
    @audio_uploads = AudioUpload.all
  end

  # GET /audio_uploads/1
  def show
  end

  # GET /audio_uploads/new
  def new
    @audio_upload = current_user.audio_uploads.build
  end

  # GET /audio_uploads/1/edit
  def edit
  end

  # POST /audio_uploads
  def create
    @audio_upload = current_user.audio_uploads.build(audio_upload_params)
      if @audio_upload.save
         redirect_to @audio_upload, notice: 'Audio upload was successfully created.'
      else
        render :new  
      end
  end

  # PATCH/PUT /audio_uploads/1
  def update
      if @audio_upload.update(audio_upload_params)
        redirect_to @audio_upload, notice: 'Audio upload was successfully updated.'
      else
        render :edit  
      end
  end

  # DELETE /audio_uploads/1
  def destroy
    @audio_upload.destroy
    redirect_to audio_uploads_url, notice: 'Audio upload was successfully destroyed.' 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audio_upload
      @audio_upload = AudioUpload.find(params[:id])
    end

    def correct_user
      @audio_upload = current_user.audio_uploads.find_by(id: params[:id])
      redirect_to audio_uploads_path, notice: "Not authorized to edit this audio upload" if @audio_upload.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def audio_upload_params
      params.require(:audio_upload).permit(:artist_name, :track_name, :image, :audio)
    end
end
