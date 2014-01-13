class WelcomeController < ApplicationController
  def index


 require 'open-uri' 
 require 'json' 
 require 'gon'
result = JSON.parse(open("XXX").read)


@coords = []

result["features"].each do |f|



 out = f['attributes']['STREET']
 out = f['attributes']['X']
 out = f['attributes']['Y']
 long = -2.64800 + 0.21425*(f['attributes']['X'] -355000)/15000 
# long = -2.8632 + 0.5722*(f['attributes']['X'] -340000)/40000
 lat = 51.38225 + 0.13587*(f['attributes']['Y'] -165000)/15000 
# lat = 51.3356 + 0.2728*(f['attributes']['Y'] -160000)/30000

 desc = f['attributes']['STREET']
@coords.push([lat,long,desc])
gon.coords = @coords
 
end

 out = result['features'][0]['attributes']['STREET']
 out = result['features'][0]['attributes']['X']
 out = result['features'][0]['attributes']['Y']



  end
end
