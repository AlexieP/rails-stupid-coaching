class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @user_questions = params[:user_questions]
    @coach_answer =
    if @user_questions.include?("?")
      "Silly question, get dressed and go to work! 😡"
    elsif @user_questions == 'I am going to work!'
      'Great 😇'
    else
      "I don't care, get dressed and go to work! 😡"
    end
  end

end
