# SwiftUI
SwiftUI 튜토리얼 학습 레포

# Summary

- Section1
  * SwiftUI는 선언형으로 UI를 구성하게 해준다.
  * 원하는 속성이 있으면 점"." 과 함께 속성을 부여 할 수 있다

    ![스크린샷 2023-10-23 오후 3 07 21](https://github.com/lemona-97/SwiftUI/assets/75213755/95c541a6-962e-40d0-b78c-b215efb1dd54)

  * 코드, canvas(preview), inspector(우측 속성보기) 에서 모두 변경(편집)이 가능하다.
  * Stack을 사용하면 View를 추가 할 때 편리하다 (VStack - 위 아래로 구성, HStack(좌, 우로 구성)
  * Stack과 같이 내부요소로 view가 포함 될 때는 한번에 처리가 가능하여 공통적인 속성을 부여하기 간편하다.

    ![스크린샷 2023-10-23 오후 3 11 33](https://github.com/lemona-97/SwiftUI/assets/75213755/bdd03b36-41e1-43c6-a03e-41366c2d36d4)

- Section2
  * List는 id와 data를 parameter로 받아서 리스트로 나타낸다

     ![스크린샷 2023-10-23 오후 3 15 33](https://github.com/lemona-97/SwiftUI/assets/75213755/7eaa0927-672a-405a-9e09-87077a51c230)

  * 객체가 Identifiable protocol을 채택했다면 내부 property에 id를 추가 하여야 한다.
  * List가 취급하는 data가 Identifiable protocol을 채택했다면 List의 parameter로 id를 넘겨 줄 필요 없다.
 
     ![스크린샷 2023-10-23 오후 3 18 39](https://github.com/lemona-97/SwiftUI/assets/75213755/dedcb095-c448-49a2-b217-9127a5ab5ddc)

  * NavigationLink의 클로저에 이동하고자 하는 destination을 설정하여 view를 이동 할 수 있다. (UIKit의 pushViewController 인 듯)
    
- Section 3
  * @State 속성을 property에 부여함으로써 해당 값이 변경 될 때 마다 view가 갱신된다. (String, Bool, Int 같은 간단한 타입)
  * @State를 통해 특정 뷰의 상태를 나타내는 property를 선언 할 경우 해당 뷰에서만 접근 가능하도록 private을 설정 해야한다 <br> (아마 다른 view에서 잘못 접근하여 변경이 되는것을 방지 하려는듯 싶다, 같은 property명을 사용할 수 도 있으니까)
  * SwiftUI에서는 observable property가 변화 하고, view의 body가 해당 property를 직접 읽을때만 view를 update한다
    
     ![스크린샷 2023-10-23 오후 5 13 09](https://github.com/lemona-97/SwiftUI/assets/75213755/12d410a9-1305-4066-acc9-46b623f4b551)

  * childView - @Environment 속성을 프로퍼티에 추가
  * parentView - environment(_:) 수정자를 미리보기(parentView이기도 함)에 추가해야함
  * App에서 ContentView()에 .environment(_:)로 데이터모델의 인스턴스를 넘겨주면 하위 뷰에서 모두 관찰 가능. <br> 이외에도 .environment의 파라미터로는 envirionmentValues type에 해당하는 여러가지 값( ex)다크모드 상태, 국가정보, 시간대 정보 등) 을 넘겨줄 수 있다. 그래서 하위 뷰에서 모두 적용 및 관찰됨
    
     ![스크린샷 2023-10-23 오후 5 17 00](https://github.com/lemona-97/SwiftUI/assets/75213755/63237143-19c1-486c-b047-ab86532a7680)

  
