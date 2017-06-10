class Interviewer < ApplicationRecord
  has_many :answer_ratings
  has_many :interview_participants, as: :participant
  has_many :interviews, through: :interview_participants

  # upcoming_interviews association retrives only(max) next two interviews per interviewer
  has_many :upcoming_interviews, -> { where(['interview_date > ?', Time.now]).limit(2) }, through: :interview_participants, source: :interview

  # as_json method defines the response format as required.
  def as_json options={}
    super(only: [],
            include: {
                      upcoming_interviews: {
                        only: [:interview_date, :description],
                        include: {
                          position: {
                             only: [:name, :description]
                           },
                           candidate: {
                             only: [:name, :email, :phone]
                           },
                           questions: {
                             only: [:question]
                           }
                        }
                      }
                      }
          )
  end

end
