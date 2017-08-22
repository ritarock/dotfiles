#railsのテスト
FROM ruby:2.3.1
ENV APP_ROOT /usr/src/docker-rails-test

#Workディレクトリの設定
WORKDIR $APP_ROOT

#apt-getでtoolのインストール
RUN apt-get update && \
        apt-get install -y nodejs && \
        apt-get install -y vim
        
#rails導入
RUN gem install --no-ri --no-rdoc rails -v 5.0.0.1

EXPOSE 3000:3000

#bashの立ち上げ
CMD ["/bin/bash"]

