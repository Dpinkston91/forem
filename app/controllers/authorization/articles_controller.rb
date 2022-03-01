module Authorization
  class ArticlesController < ApplicationController
    include ApplicationHelper
    layout false

    before_action :authenticate_user!
    after_action :verify_authorized

    def create_post_button
      authorize Article, :create?
    end
  end
end
