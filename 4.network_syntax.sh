# 프로세스 목록 조회
ps -ef
ps -ef | grep "java"

# 패키지관련
# yum-레드헷계열 패키지관리도구, apt-데비안계열 패키지관리도구
# 패키지 목록 최신화
sudo apt update
# nginx 등 프로그램 설치
sudo apt install nginx
# 프로세스 실행관리 도구 : systemctl
sudo systemctl start nginx
sudo systemctl stop nginx
# 프로세스 강제종료
sudo kill -9 PID(프로세스ID)

# 특정 도메인의 ip 주소 정보 조회 : DNS서버에 문의
nslookup google.com

# 로컬 ip 정보 조회
ifconfig

# 네트워크연결상태 조회
# 일반적으로 ping은 보안상 막아두고 있음. (ping으로 공격당할 수 있음)
ping IP주소
ping 8.8.8.8

# IP와 포트를 이용해, 특정 서버의 특정 프로그램의 통신상태까지 확인가능
# 일반적으로 telnet은 막혀있고, 사용하기를 권장하지 않음.
telnet IP주소 포트번호
nc -zv IP주소(또는도메인) 포트번호     // netcat = nc
ex) nc -zv naver.com 443 or 80  // 443 https , 80 http
22번 포트 원격 접속 포트

# 원격접속 : 22 port open
ssh 계정명@도메인주소(또는IP주소)
ssh -i "t0est.pem" ubuntu@ec2-54-180-144-135.ap-northeast-2.compute.amazonaws.com

# 원격파일전송 : 22 port open
scp 전송하고자하는 파일 원격지주소





ip : 어떤 컴퓨터로 갈지 결정
port : 어떤 프로그램으로 갈지 결정
