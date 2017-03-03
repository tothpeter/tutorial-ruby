require './exercise'

describe Exercise do
  describe ".perform" do
    examples = [
      { input: "Web IconHTML & CSS100%",                 output: 100 },
      { input: "Command LineLearn the Command Line100%", output: 100 },
      { input: "Ruby IconRuby50%",                       output: 50  },
      { input: "Rails IconLearn Ruby on Rails100%",      output: 100 },
      { input: "Git IconLearn Git100%",                  output: 100 },
      { input: "SassLearn Sass20%",                      output: 20  },
      { input: "JQuery IconjQuery1%",                    output: 1   },
      { input: "Angular JSLearn AngularJS 1.X100%",      output: 100 },
      { input: "Javascript IconLearn JavaScript55%",     output: 55  }
    ]

    describe 'v1' do
      examples.each do |example|
        it "returns #{example[:output]} for '#{example[:input]}'" do
          output = Exercise.perform(example[:input])

          expect(output).to eq(example[:output])
        end
      end
    end

    describe 'v2' do
      examples.each do |example|
        it "returns #{example[:output]} for '#{example[:input]}'" do
          output = Exercise.perform2(example[:input])

          expect(output).to eq(example[:output])
        end
      end
    end
  end
end
