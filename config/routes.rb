Rails.application.routes.draw do
	root "reports#top"
	resources :reports
end
