# 주소는 건들지마세요.
# 요청 건수 제한이 있으니 조심히 ㅜ^ㅜ
require 'httparty'
url = 'http://openapi.airkorea.or.kr/openapi/services/rest/ArpltnInforInqireSvc/getMsrstnAcctoRltmMesureDnsty?stationName=%EC%98%81%EB%93%B1%ED%8F%AC%EA%B5%AC&dataTerm=MONTH&numOfRows=100&ServiceKey=sfE57qPQ5x1eAXU41ftcyXYJZK5eKEONTGzz%2FdCe069VtqGX4UwcpLZbJhXSayA%2FtauuMhXPXttKeoxuafYWPQ%3D%3D'
response = HTTParty.get(url)
dust = response.first[1]["body"]["items"]["item"][1]["pm10Value"]
puts dust
case 
  when dust<=30; x="좋음"
  when dust>30 and dust<=80 then x="보통"
  when dust>80 and dust<=150 then x="나쁨"
  when dust>150 then x="매우나쁨"
end</code>
puts ("미세먼지 농도는 "+x)
dust=dust.to_i
if dust>150
  puts "매우나쁨"
elsif dust>80
  puts "나쁨"
elsif dust>30
  puts "보통"
else
  puts "좋음"