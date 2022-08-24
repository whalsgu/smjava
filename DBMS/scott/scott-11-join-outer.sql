-- 아웃터조인(outer join)
-- left outer join : 외쪽 외부 조인
-- right outer join : 오른쪽 외부 조인
-- full outer join : 전체 외부 조인


-- 셀프조인(SELF JOIN)
-- emp.mgr이 null이거나 해당하는 상위 매니저가 없는 경우는 검색 누락
-- 7839(KING)
SELECT e.empno "사원" , e.ename "사원이름", e.job, e.mgr "매니저코드", m.empno "매니저코드", m.ename "매니저이름"
    FROM emp e, emp m
    WHERE e.mgr = m.empno;

-- LEFT OUTER JOIN : emp, emp
SELECT e.empno "사원" , e.ename "사원이름", e.job, e.mgr "매니저코드", m.empno "매니저코드", m.ename "매니저이름"
    FROM emp e LEFT OUTER JOIN emp m ON(e.mgr = m.empno)
    ORDER BY e.empno;

-- LEFT OUTER JOIN : emp, emp_mgr
SELECT e.empno "사원" , e.ename "사원이름", e.job, e.mgr "매니저코드", m.empno "매니저코드", m.ename "매니저이름"
    FROM emp e LEFT OUTER JOIN emp_mgr m ON(e.mgr = m.empno)
    ORDER BY e.empno;

-- 표준(SQL-99) 방식
-- LEFT OUTER JOIN : emp3, emp3
-- 자신의 상관이 누구인가?
SELECT e.empno "사원" , e.ename "사원이름", e.job, e.mgr "매니저코드", m.empno "매니저코드", m.ename "매니저이름"
    FROM emp3 e LEFT OUTER JOIN emp3 m ON(e.mgr = m.empno)
    ORDER BY e.empno;

-- 기존의 오라클 방식
-- LEFT OUTER JOIN : emp3, emp3
-- 셀프조인 : WHERE e.mgr = m.empno 
SELECT e.empno "사원" , e.ename "사원이름", e.job, e.mgr "매니저코드", m.empno "매니저코드", m.ename "매니저이름"
    FROM emp e, emp m
    -- FROM emp3 e, emp3 m
    WHERE e.mgr = m.empno(+)
    ORDER BY e.empno;


-- RIGHT OUTER JOIN : emp3, emp3
-- 내가 누구의 상관인가?
-- 결과 필드가 NULL이면 나는 누구의 상관도 아니다.
SELECT e.empno "사원" , e.ename "사원이름", e.job, e.mgr "매니저코드", m.empno "매니저코드", m.ename "매니저이름"
    FROM emp e RIGHT OUTER JOIN emp m ON(e.mgr = m.empno)
    ORDER BY e.empno;
    
SELECT e.empno "사원" , e.ename "사원이름", e.job, e.mgr "매니저코드", m.empno "매니저코드", m.ename "매니저이름"
    FROM emp e RIGHT OUTER JOIN emp m ON(m.empno = e.mgr)
    ORDER BY e.empno;

-- 기존의 오라클 방식
-- RIGHT OUTER JOIN : emp3, emp3
SELECT e.empno "사원" , e.ename "사원이름", e.job, e.mgr "매니저코드", m.empno "매니저코드", m.ename "매니저이름"
    FROM emp e, emp m
    WHERE e.mgr(+) = m.empno
    ORDER BY e.empno;

SELECT e.empno "사원" , e.ename "사원이름", e.job, e.mgr "매니저코드", m.empno "매니저코드", m.ename "매니저이름"
    FROM emp e, emp m
    WHERE m.empno = e.mgr(+)
    ORDER BY e.empno;


-- FULL OUTER JOIN(전체 외부 조인)
-- 나의 직속상관(매너저)
-- 직속상관을 가지고 있지 않은 사원
SELECT e.empno "사원" , e.ename "사원이름", e.job, e.mgr "매니저코드", m.empno "매니저코드", m.ename "매니저이름"
    FROM emp e FULL OUTER JOIN emp m ON(e.mgr = m.empno)
    ORDER BY e.empno;

/*
-- [에러] ORA-01468: outer-join된 테이블은 1개만 지정할 수 있습니다
-- LEFT, RIGHT 양쪽에 (+)를 지정할 수 없다.
SELECT e.empno "사원" , e.ename "사원이름", e.job, e.mgr "매니저코드", m.empno "매니저코드", m.ename "매니저이름"
    FROM emp e, emp m
    WHERE e.mgr(+) = m.empno(+)
    ORDER BY e.empno;
*/

-- [문제]
-- FULL OUTER JOIN(전체 외부 조인)
-- UNION으로 구현 가능

-- LEFT OUTER JOIN : emp, emp
SELECT e.empno empno, e.ename, e.job, e.mgr, m.empno, m.ename
    FROM emp e LEFT OUTER JOIN emp m ON(e.mgr = m.empno)
UNION
-- RIGHT OUTER JOIN : emp, emp
SELECT e.empno empno, e.ename, e.job, e.mgr, m.empno, m.ename
    FROM emp e RIGHT OUTER JOIN emp m ON(e.mgr = m.empno)
ORDER BY 1;    

    
    
    