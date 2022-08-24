-- 조인(JOIN)
-- 셀프조인(SELF JOIN)

-- 매니저
CREATE TABLE emp_mgr
    AS SELECT * FROM emp;
    
SELECT empno, ename, mgr FROM emp ORDER BY mgr;    

-- 사원, 사원의 매니저
-- 동일한 두개의 테이블로 조인해서 매니저이름 검색해서 연결
SELECT e.empno "사원" , e.ename "사원이름", e.mgr "매니저코드", m.empno "매니저코드", m.ename "매니저이름"
    FROM emp e, emp_mgr m
    WHERE e.mgr = m.empno;
    
-- 사원, 사원의 매니저
-- 자기 자신 검색: 검색되지 않음
-- 동일한 하나의 레코드 안에서 비교
SELECT e.empno "사원" , e.ename "사원이름", e.mgr "매니저코드", e.empno "매니저코드", e.ename "매니저이름"
    FROM emp3 e
    WHERE e.mgr = e.empno;

-- 셀프조인(SELF JOIN)
SELECT e.empno "사원" , e.ename "사원이름", e.mgr "매니저코드", m.empno "매니저코드", m.ename "매니저이름"
    FROM emp e, emp m
    WHERE e.mgr = m.empno;
    