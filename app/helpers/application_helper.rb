# frozen_string_literal: true

module ApplicationHelper
  def display_user_email
    user_signed_in? ? current_user.email : link_to('Sign in', :new_user_session, class: 'text-warning')
  end
end
