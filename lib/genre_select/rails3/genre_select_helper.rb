module ActionView
  module Helpers
    class FormBuilder
      def genre_select(method, priority_or_options = {}, options = {}, html_options = {})
        if Hash === priority_or_options
          html_options = options
          options = priority_or_options
        else
          options[:priority_countries] = priority_or_options
        end

        @template.genre_select(@object_name, method, objectify_options(options), @default_options.merge(html_options))
      end
    end

    module FormOptionsHelper
      def genre_select(object, method, options = {}, html_options = {})
        GenreSelect.new(object, method, self, options.delete(:object)).render(options, html_options)
      end
    end

    class GenreSelect < InstanceTag
      include ::GenreSelect::TagHelper

      def render(options, html_options)
        @options = options
        @html_options = html_options

        if self.respond_to?(:select_content_tag)
          select_content_tag(genre_option_tags, @options, @html_options)
        else
          html_options = @html_options.stringify_keys
          add_default_name_and_id(html_options)
          content_tag(:select, add_options(genre_option_tags, options, value(object)), html_options)
        end
      end
    end
  end
end
