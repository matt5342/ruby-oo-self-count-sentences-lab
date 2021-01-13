require 'pry'

class String

  def sentence?
    if self[self.length - 1] == "."
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    word_array = []
    word_array = self.split(/[.!?]/)
    word_array.delete("")
    word_array.count
  end
end