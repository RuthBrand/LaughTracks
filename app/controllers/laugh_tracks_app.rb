class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
      @specials = Special.where(comedian_id: @comedians.ids)
     else
      @comedians = Comedian.all
      @specials = Special.all
    end
      # @specials = Special.all
    erb :"comedians/index"
  end

end
