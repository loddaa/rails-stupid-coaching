class QuestionsController < ApplicationController # THIS IS BACKEND

  def ask
  end

  def answer
    question = params[:question]
    @answer = coach_answer(question)
  end

  private

  def coach_answer(question)
    @time = Time.now
    case question
    when 'Hello' then 'Hello my friend. I hope you are doing well!'
    when 'What time is it' then @time.strftime('%A, %d %b %Y %l:%M %p')
    else 'Go to work'
    end
  end

end
