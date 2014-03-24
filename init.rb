require 'redmine'
require_relative 'lib/issue_patch'

Redmine::Plugin.register :time_details do
  name 'Time Details plugin'
  author 'Sergey Morozov'
  description 'Show detailed information about spent time by activities.'
  version '0.0.1'
  url 'https://github.com/futurecolors/time_details'
  author_url 'https://github.com/thesealion'
  settings :default => {}, :partial => 'time_details/settings'
end
