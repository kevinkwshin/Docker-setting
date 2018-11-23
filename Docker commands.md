
<pre><code># clear all images, containers ...
docker system prune -a</pre></code>


# 도커 실행과정 요약
도커 이미지 빌드(기반 이미지/패키지 설치 등)
인스턴스 생성(포트 연결 및 PC폴더와 도커의 폴더 1:1연결)
도커 이미지 진입
도커 이미지 추출(tar파일로 저장)


# 도커 실행 세부내용
1. 제 파일 저장 위치는 다음과 같습니다… 저장할 위치는 필요에 따라 변경해주세요
파일 목록 : Dockerfile <-- 도커 이미지 생성을 위한 재료
          build.sh   <-- 도커 이미지 빌드/생성 명령어 배치파일
저장 위치 : /Users/keewon/Dockers

2. 터미널을 실행해서 해당 위치로 갑니다. 물리적 폴더와 도커의 폴더를 연결하기 위해 파일수정이 필요합니다.
Build.sh를 열어서 “/Users/keewon/Dockers/files:/files”를 위 1번에 해당하는 위치로 변경해주고, 아래 형식에 맞춰 나머지 연결할 디렉토리 주소도 확인해주세요…

형식 : docker run -dit -v PC폴더주소1:도커폴더주소1 -v PC폴더주소1:도커폴더주소1 도커계정/도커이미지이름
명령어에 순차적으로 적어서 여러 폴더를 연결할 수 있습니다만, PC폴더주소는 반드시 실제 존재하는 폴더여야 합니다!

3. 이미지를 빌드하고, 실행하기 위해 터미널에서 아래 명령어를 칩니다.
> bash build.sh

4. 터미널에서 명령어를 쳐서 도커이미지에 진입합니다. (cpu —> docker, gpu —> nvidia-docker)
[container-id]는 docker ps 명령어를 치면 맨앞에 나오는 컨테이너 고유 아이디입니다.
> docker exec -it [container-id] bash

—> 도커 이미지에 들어갔습니다.
   도커에 들어가면 # 표시가 뜹니다
   이후는 우분투 터미널과 사용법이 같습니다.
># bash train.sh

5. 도커 이미지를 .tar 형태로 저장합니다.
—> 도커 이미지의 밖에서 실행합니다. 도커 이미지에서 나올려면 exit을 누릅니다.
> docker save -o [파일명].tar 도커계정/도커이미지이름

6. 그외 자주 사용하는 명령어
# container 삭제
> docker kill [container id]

# 실행중인 모든 container 삭제
> docker kill $(docker ps -q)

# 다운받은 모든 이미지/리소스 삭제
> docker system prune -a
