Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'interviewers/:id/upcoming_interviews', to: 'interviewers#upcoming_interviews', :as => "upcoming_interviews"
end
