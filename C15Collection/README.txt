컬렉션 프레임워크(Collection Framework)

1. 자바에서 지원하는 자료구조(Data Structure)
2. 객체를 효율적으로 추가, 삭제, 검색 지원
3. 패키지는 java.util
4. List, Set, Map


----------------------------------------------------------------------------   
(List)
1. 배열 형태
2. 순서를 유지하고 저장
3. 중복저장 가능
4. 순차적인 연속된 데이터 처리
5. 종류 
   - ArrayList : 읽기 유리, 속도 유리, 자료의 끝에 추가 유리, 메모리 절약
   - LinkedList : 추가 유리, 중간속도, 중간 삽입 유리
   - Vector : Thread Safe(쓰레드 안전), 속도 저하
   
6. 메소드
   - boolean add(E e) : 객체를 끝에 추가
   - void add(int index, E element) : 해당하는 인덱스에 객체를 추가
   - E set(int index, E element) : 해당하는 인덱스에 저장된 객체를 변경(바꿈)
   - boolean contains(Object o) : 객체가 있는지 확인
   - E get(int index) : 인덱스의 객체를 리턴
   - boolean isEmpty() : 컬렉션이 비어 있는지 조사(데이터 비어 있는지 검사)
   - int size() : 저장되어 있는 객체의 갯수 리턴
   - void clear() : 저장된 모든 객체를 삭제
   - E remove(int index) : 해당하는 인덱스의 객체를 삭제
   - boolean remove(Object o) : 해당하는 객체를 찾아서 삭제     
   - Iterator<E> iterator() : 반복자 리턴
   
----------------------------------------------------------------------------   
(Set)
1. 집합처리
2. 합집합, 교집합, ...
3. 순서를 유지하지 않고 저장(인덱스 관련 메소드가 없다)
4. 중복 저장 안됨   
5. 종류
   - HashSet
   - TreeSet
6. 메소드
   - boolean add(E e) : 객체를 끝에 추가
   - boolean contains(Object o) : 객체가 있는지 확인
   - boolean isEmpty() : 컬렉션이 비어 있는지 조사(데이터 비어 있는지 검사)
   - int size() : 저장되어 있는 객체의 갯수 리턴
   - void clear() : 저장된 모든 객체를 삭제
   - boolean remove(Object o) : 해당하는 객체를 찾아서 삭제     
   - Iterator<E> iterator() : 반복자 리턴
   
----------------------------------------------------------------------------   
(Map)
1. 사전(딕셔너리)
2. 키와 값의 쌍으로 저장
3. 키는 중복 저장 안됨
4. 비순차적 탐색
5. 종류
   - HashMap
   - TreeMap
   - Properties
   - Hashable : Thread Safe(쓰레드 안전), 속도 저하
6. 메소드
   - V put(K key, V value) : 키와 값을 저장, 리턴은 값
   - boolean containsKey(Object key) : 해당 키의 존재 유무(true, false)
   - boolean containsValue(Object value) : 해당 값의 존재 유무(true, false)
   - Set<Map.Entry<K, V>> entrySet() : 키와 값의 쌍으로 구성된 모든 Map.Entry 객체를 Set에 담아서 리턴
   - V get(Object key) : 키에 해당하는 값을 리턴
   - boolean isEmpty() : 컬렉션이 비어 있는지 유무
   - Set<K> keySet() : 모든 카를 Set 객체에 담아 리턴
   - int size() : 저장된 키의 총 갯수 리턴
   - Collection<V> values() : 저장된 모든 값을 Collection에 담아서 리턴
   - void clear() : 모든 Map의 데이터 삭제
   - V remove(Object key) 해당하는 키와 일치하는 Map.Entry를 삭제하고 값을 리턴
   
   
----------------------------------------------------------------------------   
   