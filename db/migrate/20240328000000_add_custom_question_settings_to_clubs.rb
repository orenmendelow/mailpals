class AddCustomQuestionSettingsToClubs < ActiveRecord::Migration[7.2]
  def change
    add_column :clubs, :use_custom_questions, :boolean, default: false
    add_column :clubs, :custom_questions_only, :boolean, default: false
  end
end
