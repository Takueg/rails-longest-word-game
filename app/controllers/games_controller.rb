require 'open-uri'

class GamesController < ApplicationController

  def new
    # create a new @letters instance variable storing these random letters from the alphabet.
    @letters = []
    10.times do
      @letters << ("A".."Z").to_a.sample
    end
    @letters
  end

  def is_valid?
    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    result = JSON.parse(open(url).read)
    result["found"]
  end

  def include?
    attempt_array = @word.chars

    true_false = attempt_array.map do |letter|
      @letters.include?(letter)
    end
    true_false.all?
  end

  def score
    @word = params[:word].upcase
    @score = ""

    # if is_valid? &&

    # end
  end

end
