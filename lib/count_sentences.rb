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
    ary = self.split(/[.?!]/)
    ary.reject! {|e| e == ""}
    ary.count
  end
end
