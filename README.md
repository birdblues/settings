# settings

## pyenv

```shell
brew update
brew install pyenv
 
# bash_profile에 추가. 나는 zsh라 ~/.zshrc에 추가하였다.
echo 'eval "$(pyenv init -)"' >> ~/.zshrc  
 
# pyenv 사용하기. 현재 설치한 버전들이 다 나온다.
pyenv version
 
#설치할 수 있는 파이썬 리스트를 보여주고, 거기서 골라서 설치
pyenv install -list
pyenv install 3.6.4
python -version #버전확인
pyenv global 3.6.4  #설치한 파이썬 버전 사용
```

## virtualenv
```
brew install pyenv-virtualenv
 
# pyenv init 안했으면 위에것도 bash_profile이나 zshrc에 추가해준다. 
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
 
# 2.7.10을 사용한 pinkfong-tv라는 프로젝트 만들기
pyenv virtualenv 2.7.10 pinkfong-tv
 
# 만든 이름으로 activate하기
pyenv activate pinkfong-tv
 
# install된 패키지들을 보여준다.
pip freeze
 
# django 설치하기
pip install django
 
# pip upgrade
pip install --upgrade pip
 
# deactivate하기
pyenv deactivate
```

## autoenv

```
brew install autoenv
 
# zshrc에 매 세션마다 autoenv자동실행 코드 삽입
echo 'source /usr/local/opt/autoenv/activate.sh' >> ~/.zshrc
 
# 프로젝트 폴더로 들어가서, .env파일 만들기
vi .env
 
# .env에는 activate하고 싶은 virtualenv명을 적는다.
pyenv activate pinkfong-tv
 
# 이건 깃에 올릴 필요가 없으니, global gitignore을 만든다
touch ~/.gitignore
git config --global core.excludesfile ~/.gitignore
vi ~/.gitignore
 
# .gitignore에 제외하고 싶은 .env를 써준다.
.env
```
## java 7

```
brew tap caskroom/versions
brew cask install java7
```
