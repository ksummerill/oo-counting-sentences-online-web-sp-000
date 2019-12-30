require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  # call method on a string (self) and get back a count of sentences in the string
  # 1. take each string, split it into individual sentences
  # 2. add sentences to an array
  # 3. count each element in that array
  def count_sentences
        self.split(/[.!?]/).reject {|x| x.empty?}.size
  end

end
