class DocumentsController < ApplicationController
  before_action :set_user
  before_action :set_document, only: %i[show]

  def index
    render json: @user.documents, serializer: DocumentSerializer
  end

  def show
    render json: @document, serializer: DocumentSerializer
  end

  def create
    document = @user.documents.create(create_params)
    render json: document, serializer: DocumentSerializer
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_document
    @document = @user.documents.find(params[:id])
  end
end
