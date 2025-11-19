# 사용자 추가 및 비밀번호 지정
sudo useradd newuser1
sudo passwd newuser1
# sudo : root의 권한으로 실행 -> root의 비밀번호가 아닌, 현재 사용자의 비밀번호를 입력

# su : 사용자 변경 -> 변경하고자 하는 계정의 비밀번호
su - newuser1


# chmod는 권한 변경 : u(소유자),g(그룹),o(그외)로 구성. ex)rwxrw-r--
# r:4, w:2, x:1
chmod 644 파일명
chmod u+x 파일명
chmod g-x 파일명
chmod o=r 파일명

# chown은 소유자:그룹 변경
chown newuser1:newuser1

# 리눅스에는 root계정의 권한이 필요한 경우가 있음
1) root 계정 권한 빌리기만 2) root 계정으로 전환
권한 빌릴때는 내 계정의 비밀번호, root계정으로 전환할때는 root계정의 비밀번호

sudo useradd newuser1 -> 새로운 계정 입력
sudo passwd newuser1 -> 새로운 계정의 비밀번호 입력
1)권한을 빌릴대는 내계정의 비밀번호
2)root계정으로 전환 root계정의 비밀번호 : su -

su - newuser1  -> 새로운 계정의 비밀번호 입력

su root // 실행 후 root 비밀번호 입력 필요
sudo root // 실행 후 

[파일권한]
파일 -> 소유자, 그룹
파일 -> -rwxrwxrwx 소유자, 소유자그룹, 그외 권한 
chmod 764

폴더/소유자/소유자그룹/그외
d/rwx/rwx/rwx

소유자, 소유그룹, 그외
rwxr--r--

chown 소유자:그룹 파일명
sudo chown newuser1:newuser1 first_file.txt

newuser1:newuser1

nano파일 open : unwritable

