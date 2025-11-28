[리눅스]
- 레드헷(enterpise), 데비안 계열
가상화 pc
- 도커, virtual box, vmware

1. vmware설치
2. vmware위에 실행할 리눅스 iso파일 
- /etc , /home , /var
- 쉘 프로그래밍 언어 ex) cd 등

- 쉘명령어

# 현재 위치 경로 출력
pwd 

# 현재위치에서 파일 및 폴더 목록 조회
ls

ls -l 자세히 : 파일,폴더 목록 상세조회 (권한 등)
ls -al 자세히, 숨긴파일까지
ls -alrt 자세히, 숨김파일, 오래된 순서로 정렬(r:오래된, t:시간순)

# 디렉토리 생성
mkdir jeonghun

clear 정리
ctrl+C 취소


# 특정 디렉토리로 이동
cd jeonghun

# 상위 디렉토리로 이동(cd ../)
cd .. 

# 루트 디렉토리(최상위 디렉토리)로 이동
cd / 

# 직전폴더로 이동
cd -

# 홈경로(/home/본인계정 폴더)로 이동
cd

# 상대경로와 절대경로
# 상대경로는 : cd ../../
# 절대경로 : cd /home


# 파일 내용을 터미널 창에 출력하기
cat first_file.txt


# 파일 내용을 터미널 창에 열기
vi : 기본편집기
nano : 있을수도 없을수도 있음

[nano] 

#저장
ctrl + o

#복사
alt + 6

#붙여넣기
ctrl +  U

#종료
ctrl + x

<조회 기능>

# 파일 내용 상위 10줄
head 

# 파일 내용 하위 10줄 (최신 마지막꺼)
tail 파일명 -> 로그파일 조회 
ex)  -5 : 마지막 5줄 조회

# 파일 내용 하위 n줄 출력하기
tail -숫자 파일명

# 파일 내용 실시간 조회
tail -f 파일명
 -f : 실시간으로 파일 내용 조회 (로그파일 조회할때 아주 많이 사용)

# 도스키(화살표키) 위/아래를 통해 이전명령어 조회
# history를 통해 이전에 실행했던 명령어 모두 조회
# clear를 통해 터미널창에 보이는 명령어 내역 모두 지우기
# Ctrl+c를 통해 입력중인 명령어 취소



# 쉘 종류 조회 보통 bash쉘
echo $0
그외, bash, sh,zsh 


# 파일삭제 명령어. -f 옵션을 통해 묻지않고 삭제
rm 파일명

# 폴더째 삭제
rm -r 폴더명

# 터미널창에 입력한 문자열 출력
echo "hello world"

# echo를 통해 파일에 입력 가능
# > : 덮어쓰기, >> : 추가모드

echo "hello world" > second_file.txt (생성도 됨)

-r(recursive:재귀적) : 폴더 삭제
-f(강제)
.(현재폴더)

# 복사명령어(폴더 복사시에는 -r 옵션)
# cp 복사대상 복사될파일명
cp first_file.txt first_file_copy.txt

# 파일이동 명령어
mv 이동대상파일 경로/이동될파일명 (이동시키면서 이름바꾸기도 됨)
# 현재폴더에서 파일명 변경 (현재폴더에서 이동이름바꾸면서 이동)
mv second_file.txt ./third_file.txt 
# 상위폴더로 파일이동
mv second_file.txt ../

# more firtst_file.txt + space 설명


# grep : 파일 내에서 문자열 찾기
# r:디렉토리내 n:라인수출력 i:대소문자구분없이
grep -rni "hello" .
- 예시)grep -rni "hello" mydir
 hello 문자열을 라인수와 함께 mydir폴더에서 대소문자 구분 없이 검색


# find : 이름으로 파일 또는 디렉토리 찾기
find . -name "*.txt"       // txt로 끝나는 파일 찾기
find . -type f       // file 타입만 찾겠다.

# find와 grep의 혼용 (args: arguments)
# | xargs를 통해 왼쪽 실행문의 결과값을 오른쪽의 실행문의 input값으로 전달
find . -name "*.txt" | xargs grep -rni "hello"  // 명령어 합하는 방법 두가지 방식있음 (| , exec)
find . -name "*.txt" -exec grep -rni "hello" {} \;

# {}의 동작 // find로 찾은 대상이 담기는 공간
찾을 때마다 {}를 해당 파일의 경로로 바꿔서 grep 명령을 실행
find가 ./a.txt 발견
→ {}가 ./a.txt로 바뀜

# 타입은 file인 파일중에 이름이 first로 시작하는 파일을 찾아,
# 그 파일들 안에 hello라는 키워드가 들어가 있는 문장 찾아라.
find . -type f - name "first*" | xargs grep -rni "hello"
find . -type f - name "first*" -exec grep -rni "hello" {} \;


