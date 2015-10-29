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

  def question_4
    questions = Questions.new
    @question = questions.fourth_options
  end

  def question_5
    questions = Questions.new
    @question = questions.fifth_options
  end

  # Added question 6 and 7 methods into QuestionController Class

  def question_6
    questions = Questions.new
    @question = questions.sixth_options
  end

  def question_7
    questions = Questions.new
    @question = questions.seventh_options
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
      next_route = fourth_question_path

    elsif question_identifier == 'fourth_question'
      options = questions.fourth_options[:options]
      next_route = fifth_question_path

    elsif question_identifier == 'fifth_question'
      options = questions.fifth_options[:options]
      next_route = sixth_question_path
    

    # Added Sixth and Seventh Question paths to questions_controller
     elsif question_identifier == 'sixth_question'
      options = questions.sixth_options[:options]
      next_route = seventh_question_path
    

     elsif question_identifier == 'seventh_question'
      options = questions.seventh_options[:options]
      next_route = congrats_path
    end
end

    if options.first == users_answer
      redirect_to next_route
    else
      redirect_to first_question_path
    end
end
