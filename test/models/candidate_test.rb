require 'test_helper'

class CandidateTest < ActiveSupport::TestCase

  def setup
    create_answers_and_ratings
  end

  test "candidates average_rating for an answer" do
    c = candidates(:barney_rubble)
    ratings = c.answer_ratings.map(&:rating).reject{|r| r == 0}
    average = ratings.sum.fdiv(ratings.size)
    assert c.average_rating == average
  end

end
