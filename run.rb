require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/states' do
  #create an array called states
  @states=[]

  #create a hash called states
  @state={
    :id => 'NY',
    :name => 'New York'
  }

  @states <<@state

  @state={
    :id => 'AL',
    :name => 'Alabama'
  }

  @states <<@state

  @state={
    :id => 'ME',
    :name => 'Maine'
  }

  @states <<@state

  @state={
    :id => 'MA',
    :name => 'Massachusetts'
  }

  @states <<@state

  @state={
    :id => 'NJ',
    :name => 'New Jersey'
  }

  #add hash to the array
  @states <<@state

  @states.sort_by!{|s| s[:name]}
  # code!
  erb :states, layout: :main
end
