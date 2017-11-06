## 파일명 바꾸기

# 1. 폴더 안으로 들어간다.
Dir.chdir("src")
# 2. 폴더 안을 돌면서 파일들의 이름을 가져온다.
Dir.foreach(Dir.pwd) do |name|
    #File.rename("원래이름","새파일이름")
    puts name
end

files=[]
puts Dir.entries(Dir.pwd).select

Dir.entries(Dir.pwd).reject do |name|
 name[0]=="."
end


files=Dir.entries(Dir.pwd).reject {|name| name[0]=="."}
files.each do |f|
    File.rename(f,"samsung"+f)
end
#루비에는 select뿐 아니라 reject도 있다.
# 3. files 배열 안에 바꾸고자 하는 모든 파일 이름을 넣는다.
# 4. 각각의 이름을 "1.txt" -> "samsung1.txt"