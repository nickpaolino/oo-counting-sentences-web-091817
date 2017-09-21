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

  def count_sentences
    counter = 0
    self.each_char.with_index do |char, index|
      if char == "." || char == "!" || char == "?"
        if self[index + 1] == nil || self[index + 1] == " "
          counter += 1
        end
      end
    end
    counter
  end
end
