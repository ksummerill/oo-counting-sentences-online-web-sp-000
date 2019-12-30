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
  # "one. two. three?"
  # "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
  def count_sentences
      array_of_strings = []
      elements = self.split("." || "?" || "!")
      array_of_strings << elements

      array_of_strings.count
  end

end
