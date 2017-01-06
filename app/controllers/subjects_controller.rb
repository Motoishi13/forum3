class SubjectsController < ApplicationController

	before_filter :authenticate_user!, only: [:new, :create]

  def index
  	@subjects = Subject.all
  end

  def show
  	@subject = Subject.find(params[:id])
  	@comments= Comment.where(subject_id: params[:id])
  	@comment = Comment.new
  end

  def new
  	@subject = Subject.new
  end

  def create
  	@subject = Subject.new
  	@subject.title = params[:subject][:title]
  	@subject.user_id = current_user.id
  	
  	if @subject.save
  		redirect_to subjects_index_path, notice: 'スレッドを作成しました'
  	else
  		redirect_to subjects_new_path, notice: 'スレッド作成エラー'
  	end
  end
	
	def edit
		@subject = Subject.find(params[:id])
	end
	
  def update
  	@subject = Subject.find(params[:id])
  	if @subject.update(:title => params[:subject][:title])
    	redirect_to subjects_index_path, notice: 'スレッドを編集しました'
    else
    	redirect_to subjects_edit_path, notice: 'スレッド編集エラー'
    end
  end

  def destroy
  	@subject = Subject.find(params[:id])
  	@subject.destroy
  	redirect_to subjects_index_path, notice: 'スレッドを削除しました'
  end
end
