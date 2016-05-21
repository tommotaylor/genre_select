module GenreSelect
  module TagHelper
    def genre_option_tags
      option_tags_options = {
        :selected => @options.fetch(:selected) { value(@object) },
        :disabled => @options[:disabled]
      }

      option_tags = options_for_select(genre_options, option_tags_options)
    end

    private

    def genre_options
      (["folk", "blues", "jazz"])
    end
  end
end
