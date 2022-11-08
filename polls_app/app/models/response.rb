# == Schema Information
#
# Table name: responses
#
#  id               :bigint           not null, primary key
#  author_id        :bigint           not null
#  answer_choice_id :bigint           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Response < ApplicationRecord

    belongs_to :respondent,
        primary_key: :id,
        foreign_key: :author_id,
        class_name: :User

    belongs_to :answer_choice,
        primary_key: id,
        foreign_key: :answer_choice_id,
        class_name: :Answerchoice

    has_one :question,
        through: :answer_choice,
        source: :question,
        dependent: :destroy

    has_many :sibling_responses,
        through: :question,
        source: :responses,
        dependent: :destroy
end 
