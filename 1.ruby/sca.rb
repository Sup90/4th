require 'httparty'
require "nokogiri"
uri='https://www.naver.com/'
response=HTTParty.get(uri)#httpparty를 통해 url에 
#puts response
 #text=Nokogiri::HTML(response.body)#nokogiri를 통해 검색이 용이한 문서를 만든다
# puts text
 #title=text.css(#_nx_aside_realtime > div.realtime_srch > ol.lst_realtime_srch._rolling_chart._content > li._item.selected > div > div.roll._next > span > a.keyword._link > span)#css를 통해 셀럭터를 이용해 검색한다
# put title.content#.text를 사용하는 이유는 태그 안에 있는 내용을 가져오기 위해서