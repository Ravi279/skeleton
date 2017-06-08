require 'test_helper'

class InterviewerTest < ActiveSupport::TestCase

    def setup
      create_answers_and_ratings
    end

    test "interviewer have two upcoming interviews" do
      i = interviewers(:fleet_manager)
      assert i.interviews.where(['interview_date > ?', Time.now]).count == 2
    end

    test "interviewer gets candidate information for the interview" do
      i = interviewers(:fleet_manager)
      c = candidates(:barney_rubble)
      assert i.interviews.where(['interview_date > ?', Time.now]).first.candidate == c
    end

    test "interviewer gets list of questions for the interview" do
      i = interviewers(:fleet_manager)
      assert i.interviews.where(['interview_date > ?', Time.now]).first.questions.any?
    end
end
