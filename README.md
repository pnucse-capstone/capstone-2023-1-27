### 1. 프로젝트 소개

쿠버네티스와 edge computing을 이용한 대규모 실시간 IoT 데이터를 처리할 수 있는 교내 모니터링 시스템 구축

- **서비스 확장성** : 쿠버네티스의 로드밸런싱, HPA 기능을 활용하여 새로운 서비스와 IoT센서 데이터가 추가되더라도 유연한 대응이 가능
- **대규모 실시간 IoT 데이터 처리** :  edge computing 기술을 통해 대규모 IoT 센서 데이터를 수집하는 상황에서 활용 가능


### 2. 팀 소개

<table>
  <tr>
    <td align="center">
      <p><b>이현</b></p>
      <a href="https://www.github.com/hyuunnn"><img src="https://github.com/hyuunnn.png" width="100px;" alt="hyuunnn"/></a>
      <a href="mailto: hy00un@pusan.ac.kr"><p>hy00un@pusan.ac.kr</p></a>
    </td>
    <td>
      <ul>
        <li>쿠버네티스 실습 및 구축</li>
        <li>트래픽 부하테스트 결과 모니터링</li>
        <li>파이썬 데이터 시각화 및 추출</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td align="center">
      <p><b>장서윤</b></p>
      <a href="https://www.github.com/pipisebastian"><img src="https://github.com/pipisebastian.png" width="100px;" alt="pipisebastian"/></a>
      <a href="mailto: yrt7998@naver.com"><p>yrt7998@naver.com</p></a>
    </td>
    <td>
      <ul>
        <li>쿠버네티스 실습 및 구축</li>
        <li>트래픽 부하테스트 결과 모니터링</li>
        <li>파이썬 데이터 시각화 및 추출</li>
        <li>스마트 쓰레기통 서비스 프론트엔드 개발</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td align="center">
      <p><b>김은지</b></p>
      <a href="https://www.github.com/publdaze"><img src="https://github.com/publdaze.png" width="100px;" alt="publdaze"/></a>
      <a href="mailto: publdaze@naver.com"><p>publdaze@naver.com</p></a>
    </td>
    <td>
      <ul>
        <li>가로등 모니터링 서비스 프론트엔드 개발</li>
        <li>가로등 모니터링 서비스 백엔드 개발</li>
        <li>스마트 쓰레기통 서비스 백엔드 개발</li>
        <li>데이터 생성기 및 알림 서버 개발</li>
      </ul>
    </td>
  </tr>
</table>


### 3. 구성도
#### 전체 모니터링 시스템 구조
<img src="https://github.com/pnucse-capstone/capstone-2023-1-27/assets/78250089/24a4cdda-a59c-4eea-aca6-284e74d25147" width="600" alt="모니터링 시스템 구조"/>

|제목|내용|
|:---|:---|
|쿠버네티스| 로드밸런싱 기능을 활용하여 네트워크 트래픽 분산 <br> HPA기능을 활용하여 대규모 네트워크 트래픽에도 유연한 대응 가능 |
|데이터 생성기| 대규모 센서 데이터를 얻기 위해, Cron을 활용하여 가상의 데이터 생성 <br> 각각의 애플리케이션 데이터베이스의 동적으로 추가/삭제되는 가상 센서들과 1:1 매핑되어 주기적인 데이터 생성|
|부하 테스트| k6를 통해 가상의 사용자를 생성하여 부하테스트 실행 <br> 부하 테스트 결과는 모니터링 및 파이썬 csv 파일 추출|
|모니터링| 프로메테우스와 그라파나를 이용하여 쿠버네티스 자원사용률 모니터링 및 시각(CPU, Memory)|
|애플리케이션| React Native를 사용한 프론트엔드 개발 <br> Nest JS를 사용한 백엔드 개발 <br> 푸시 알람 기능|



### 4. 소개 및 시연 영상



### 5. 사용법

* **스마트 쓰레기통 백엔드 서버** 사용법은 <a href="https://github.com/Water9Tree/SmartTrashCan-Backend">README</a>를 참고한다.
* **스마트 쓰레기통 프론트엔드 서버** 사용법은 <a href="https://github.com/Water9Tree/SmartTrashCan-Frontend">README</a>를 참고한다.
* **가로등 서비스 백엔드 서버** 사용법은 <a href="https://github.com/Water9Tree/StreetLamp-Backend">README</a>를 참고한다.
* **가로등 서비스 프론트엔드 서버** 사용법은 <a href="https://github.com/Water9Tree/StreetLamp-Frontend">README</a>를 참고한다.
* **데이터 생성기**의 동작 방식 및 사용법은 <a href="https://github.com/Water9Tree/Data-Generator">README</a>를 참고한다.
* **쿠버네티스 환경 구축**은 <a href="https://github.com/Water9Tree/kube-config">README</a>를 참고한다.

