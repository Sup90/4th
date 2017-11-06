
for i in (1..30) do
    out_file = File.new(i.to_s+".txt", "w")
    out_file.puts(i.to_s+"번쨰 내용")
    out_file.close
end

#file을 일ㄲ고 쓰고 지우고 등등 할 때 모두 file.open을 사용한다.
30.times do |i|
    i+=1
    File.open(i.to_s+".txt", "w") do |file|     #i에 to_s메소드를 통해 문자화 시켜줘야한다.
  file.write(i.to_s+"번째 내용")  
 end
end

# 1.2.1. File.open 메서드
# File.open 메서드를 이용해서 새로운 파일 객체를 만드는 방법동 있다. File.new와 기본적으로 하는 일은 같다. 다른 점이라면 File.open 메서드는 block을 이용한 표현이 가능하다는 점이다.


# 1
# 2
# 3
# File.open("filename", "mode") do | fobj |
#     # 파일 관련 작업들
# end
# mode에 사용할 수 있는 값들은 다음과 같다.
# Mode	설명
# r	읽기 전용으로 연다. 파일의 처음을 가리킨다.
# r+	읽기/쓰기로 연다. 파일의 처음을 가리킨다.
# w	쓰기 전용으로 연다. 파일이 존재한다면 덮어쓴다. 파일이 없다면, 새로운 파일을 만든다.
# w+	읽기/쓰기로 연다. 파일이 존재한다면 덮어쓴다. 파일이 없다면, 새로운 파일을 만든다.
# a	쓰기 전용으로 연다. 파일이 존재한다면, 파일의 끝을 가리킨다. 추가모드라고 보면 된다. 파일이 없다면 새로운 파일을 만든다.
# a+	읽기/스기로 연다. 파일이 존재한다면, 파일의 끝을 가리킨다. 추가모드다. 파일이 없다면 새로운 파일을 만든다.
#출처 https://www.joinc.co.kr/w/Site/Ruby/File