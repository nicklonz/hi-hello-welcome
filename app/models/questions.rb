class Questions
  def first_options
    {
      question: "What route does /questions/1 point to?",
      options: ['questions#question_1', 'questions#first', 'questions#1', 'questions#number_one']
    }
  end

  def second_options
    {
      question: "What line defines the action 'question_2'",
      options: ['10', '14', '32', '2']
    }
  end

  def third_options
    {
      question: "What class contains all of the methods for the answers to these questions?",
      options: ['Questions', 'AnswersController', 'Answer', 'Question']
    }
  end
end
