class InterviewersController < ApplicationController

  before_action :set_interviewer, only: [:upcoming_interviews]

  # upcoming_interviews association retrives only(max) next two interviews per interviewer
  # and the json format returns all the necessary details.
  # GET /upcoming_interviews/:id
  def upcoming_interviews
    future_interviews_count = @interviewer.upcoming_interviews.count
    if [1, 2].include? future_interviews_count
      render json: @interviewer
    else
      render json: {error: "No Upcoming Interviews found"}, status: 404
    end
  end

private

  def set_interviewer
    @interviewer = Interviewer.find params[:id]
  end
end
