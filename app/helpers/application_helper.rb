# frozen_string_literal: true

module ApplicationHelper
  def display_user_email
    user_signed_in? ? current_user.email : link_to('Sign in', :new_user_session, class: 'text-warning')
  end

  def validation_errors_for(entity)
    return unless entity.errors.any?

    validation_errors ||= ['<div class="alert alert-danger my-4">']

    entity.errors.each do |error|
      validation_errors << "#{error.attribute.to_s.capitalize} #{error.message}<br>"
    end

    validation_errors.push('</div>').join
  end
end
