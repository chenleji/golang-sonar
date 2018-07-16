# golang-sonar
golang &amp; sonar-qube

`docker-compose`: sonar-qube server docker-compose file.
`Dockerfile`: the dockerfile for image "ljchen/golang-sonar". this image include gometalinter.v2 & sonar-scanner-cli-3.2.0.1227.

Please include the sonar properties file in your source code, just like below:
```
sonar.projectKey=dolphin
sonar.projectName=dolphin
sonar.projectVersion=0.1

# GoLint report path, default value is report.xml
sonar.golint.reportPath=report.xml

# Cobertura like coverage report path, default value is coverage.xml
sonar.coverage.reportPath=coverage.xml

# if you want disabled the DTD verification for a proxy problem for example, true by default
sonar.coverage.dtdVerification=false

# JUnit like test report, default value is test.xml
sonar.test.reportPath=test.xml
sonar.sources=./
sonar.tests=./
sonar.test.inclusions=**/**_test.go
sonar.sources.inclusions=**/**.go

```

