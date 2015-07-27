class QuestionsController < ApplicationController
  def index
  end

  def question_1
    questions = Questions.new
    @question = questions.first_options
  end

  def question_2
    questions = Questions.new
    @question = questions.second_options
  end

  def question_3
    questions = Questions.new
    @question = questions.third_options
  end

  def congrats
  end

  def answer
    # Params is a hash that is assigned values from our routes, and our forms.
    users_answer = params[:q][:answer]
    question_identifier = params[:question]
    questions = Questions.new

    if question_identifier == 'first_question'
      options = questions.first_options[:options]
      next_route = second_question_path

    elsif question_identifier == 'second_question'
      options = questions.second_options[:options]
      next_route = third_question_path

    elsif question_identifier == 'third_question'
      options = questions.third_options[:options]
      next_route = congrats_path
    end

    if options.first == users_answer
      redirect_to next_route
    else
      redirect_to first_question_path
    end
  end
end
