class MatchBaseQuestionsController < ApplicationController
  before_filter :set_question, :only => [:edit, :update, :destroy]

  def edit

    respond_to do |format|
      format.html
    end
  end

  def index
    @questions = MatchBaseQuestion.all

    respond_to do |format|
      format.html
    end
  end

  def create
    @question = MatchBaseQuestion.new(question_params)

    respond_to do |format|
      if @question.save!
          format.html { redirect_to match_base_questions_path}
      else
          format.html { redirect_to :back }
      end
    end
  end

  def new
    @question = MatchBaseQuestion.new

    respond_to do |format|
      format.html
    end
  end

  def update

    respond_to do |format|
      format.html
    end
  end

  def destroy
    if @question.destroy
      redirect_to user_dashboard_path(current_user)
    end

  end

private
  def set_question
    @question = MatchBaseQuestion.find(params[:id])
  end

  def question_params
    params.require(:match_base_question).permit(:question)
  end

end
