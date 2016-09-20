Nanoc::Filter.define(:json) do |content, content_identifier: :content, **h|
  {
    content_identifier => content
  }.merge(h).to_json.encode('cp1252',
                            fallback: {
                              "\u0081" => "\x81".force_encoding('cp1252'),
                              "\u008D" => "\x8D".force_encoding('cp1252'),
                              "\u008F" => "\x8F".force_encoding('cp1252'),
                              "\u0090" => "\x90".force_encoding('cp1252'),
                              "\u009D" => "\x9D".force_encoding('cp1252')
                            })
    .force_encoding('utf-8')
end
