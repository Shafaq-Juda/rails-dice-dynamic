class DicerollController < ApplicationController
  def home
    render({:template=> "diceroll_templates/home"})
  end

  def roll

    @roll = params.fetch("roll").to_i
    @sides = params.fetch("sides").to_i
    @h1 = "#{@roll}d#{@sides}"

    # if @sides == 6 && @roll == 2
    #   @first_die = rand(1..6)
    #   @second_die = rand(1..6)
    #   @result=[@first_die, @second_die]
    # elsif @sides == 10 && @roll == 2
    #   @first_die = rand(1..10)
    #   @second_die = rand(1..10)
    #   @result=[@first_die, @second_die]
    # elsif @sides == 20 && @roll == 1
    #   @first_die = rand(1..20)
    #   @result=[@first_die]
    # elsif @sides == 4 && @roll == 5
    #   @first_die = rand(1..4)
    #   @second_die = rand(1..4)
    #   @third_die = rand(1..4)
    #   @fourth_die = rand(1..4)
    #   @fifth_die = rand(1..4)
    #   @result=[@first_die, @second_die, @third_die, @fourth_die, @fifth_die]
    # else
    #   @result=["Invalid Dice Roll"]
    # end

    render({:template=>"diceroll_templates/roll"})
  end

end
