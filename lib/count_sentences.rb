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
  # "one. two. three?"
  # "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
  def count_sentences
    # self.each do |full_string|
      array_of_strings = []
      # elements = self.split("." || "?" || "!")
      # elements = self.split(".") || self.split("?") || self.split("!")
        if elements = self.split(/ /)
          array_of_strings << elements
        else self.reject(&:empty?)
      end

      array_of_strings.count
      # puts array_of_strings.count
  end

end
