describe "GenreSelect" do
  include ActionView::Helpers::TagHelper
  include ActionView::Helpers::FormOptionsHelper

  class Album
    attr_accessor :genre
  end

  let(:album) { Album.new }
  let!(:template) { ActionView::Base.new }

  let(:builder) do
    if defined?(ActionView::Helpers::Tags::Base)
      ActionView::Helpers::FormBuilder.new(:album, album, template, {})
    else
      ActionView::Helpers::FormBuilder.new(:album, album, template, {}, Proc.new { })
    end
  end

  let(:select_tag) do
    <<-EOS.chomp.strip
      <select id="genre" name="album[genre]">
    EOS
  end

  it "finds and pre-selects the existing genre attribute value" do
    selected_tag = "selected=\"selected\">Blues"
    album.genre = "Blues"
    view = builder.genre_select(:genre)

    expect(view).to include(selected_tag)
  end

  it "loads the genre options" do
    genres = options_for_select(GenreSelect::Data::Genres::GENRES_ARRAY)
    view = builder.genre_select(:genre)

    expect(view).to include(genres)
  end

  it "supports the select prompt" do
    tag = '<option value="">Select genre</option>'
    view = builder.genre_select(:genre, prompt: 'Select genre')

    expect(view).to include(tag)
  end

  it "supports the include_blank option" do
    tag = '<option value=""></option>'
    view = builder.genre_select(:genre, include_blank: true)

    expect(view).to include(tag)
  end
end

