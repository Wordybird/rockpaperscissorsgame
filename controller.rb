require ('sinatra')
require ('sinatra/contrib/all')

get '/' do
  return "Please add any two of /rock, /paper or /scissors to the URL. This program will then calculate the winner!"
end

get '/:option1/:option2' do
  option1 = params[:option1]
  option2 = params[:option2]
  if (option1 == "rock" and option2 == "scissors") or (option1=="scissors" and option2 == "rock") then return "Rock wins!"
  elsif (option1 == "paper" and option2 == "rock") or (option1=="rock" and option2 == "paper")  then return "Paper wins!"
  elsif (option1 == "paper" and option2 == "scissors") or (option1=="scissors" and option2 == "paper")  then return "Scissors wins!"
  else return "These don't count as valid options! Please enter two of the three options in the URL."
  end
end