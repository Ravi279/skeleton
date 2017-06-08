require 'test_helper'

class CandidateTest < ActiveSupport::TestCase

  def setup
    create_answers_and_ratings
  end

  test "candidates average_rating for an answer" do
    c = candidates(:barney_rubble)
    ratings = c.answer_ratings.map(&:rating).reject{|r| r == 0}
    sum = ratings.inject(:+)
    average = (sum / ratings.size.to_f)
    assert c.average_rating == average
  end

end
