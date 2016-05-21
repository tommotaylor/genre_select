require 'genre_select/version'
require 'genre_select/formats'
require 'genre_select/tag_helper'
require 'genre_select/data/genres'

if defined?(ActionView::Helpers::Tags::Base)
  require 'genre_select/genre_select_helper'
else
  require 'genre_select/rails3/genre_select_helper'
end
