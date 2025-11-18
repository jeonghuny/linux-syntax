# 쉘 스크립트는 반드시 .sh 확장자
# 쉘 스크립트는 실행할때 ./myscript.sh
# 실행을 위해서는 실행권한(x) 필요
# 예시 
touch myscript.sh
nano myscript.sh
echo "hello world"
chmod u+x myscript.sh 
./myscript.sh

# 실습1
# myscript2 쉘 스크립트파일 생성
# 터미널창에 script start 라는 문구 출력
# 홈디렉토리에서 mydir이라는 폴더 생성
# mydir로 이동해서 file1.txt, file2.txt 파일생성
# file1.txt에는 hello from file1이라는 문구 입력 
# file2.txt에는 hello from file2이라는 문구 입력
# 터미널창에 script end 라는 문구 출력

echo "script start"
cd /home
mkdir mydir
cd /home/mydir
echo "hello from file1" > file1.txt
echo "hello from file2" > file2.txt
echo "script end"
