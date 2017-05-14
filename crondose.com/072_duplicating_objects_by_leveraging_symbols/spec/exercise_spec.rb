require './exercise'

describe Exercise do
  describe ".duplicate_objects" do
    it "clones a string and maintains the same object_id assuming that the string is identical" do
      str_array = ['some word', 'some word', 'some word']

      cloned_array = Exercise.duplicate_objects str_array

      expect(cloned_array.first.object_id).to eq(cloned_array.last.object_id)
    end
  end
end
