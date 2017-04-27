require './exercise'

describe Exercise do
  describe ".markdown_heading_parser" do
    it "Converts markdown to html headings" do
      input = <<-EOF
# Hey there

Some content

## Another heading

More content
EOF

      expected_output = <<-EOF
<h1>Hey there</h1>

Some content

<h2>Another heading</h2>

More content
EOF

      expect(Exercise.markdown_heading_parser(input)).to eq(expected_output)
    end
  end
end
