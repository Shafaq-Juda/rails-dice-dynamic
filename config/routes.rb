Rails.application.routes.draw do
  get("/", {:controller=>"diceroll", :action=>"home"})
  get("/:dice/:roll/:sides", {:controller=>"diceroll", :action=>"roll"})
end
