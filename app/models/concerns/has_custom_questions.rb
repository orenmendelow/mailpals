module HasCustomQuestions
  extend ActiveSupport::Concern

  included do
    attr_accessor :custom_questions
    has_many :questions, dependent: :destroy
    
    after_save :process_custom_questions, if: :custom_questions_changed?
  end

  private

  def process_custom_questions
    return if custom_questions.blank?
    
    custom_questions.split("\n")
      .map(&:strip)
      .reject(&:blank?)
      .each do |prompt|
        questions.create!(
          prompt: prompt,
          category: 'custom',
          asked_by: title
        )
    end
  end

  def custom_questions_changed?
    custom_questions.present?
  end
end
