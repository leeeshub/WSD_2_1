FROM tomcat:9.0

ADD war/*.war /usr/local/tomcat/webapps/
# war 파일명을 따로 지정해줘도 된다.

CMD ["catalina.sh", "run"]

# 그러면 이제부터는 도커 파일로 돌아가게 된다!!
# docker로 설정하면 우리 컴퓨터에 저장된 tomcat을 사용하는 게 아니라 docker의 컨테이너 내의 tomcat을 사용하게 된다.