-- 서브쿼리
-- 스칼라 서브쿼리(scalar sub-query) : SELECT절에 SELECT를 기술
-- SELECT절에 하나의 열 영역의 결과를 출력
-- 조건: 
--   -> SELECT절 명시하는 커브쿼리의 결과는 하나의 열에 해당하는 값만 나와야 한다.
--   -> 다중행 결과가 나오면 안된다.

-- 급여등급
SELECT * FROM salgrade;
SELECT grade FROM salgrade;

-- 사원의 급여 등급
SELECT e.empno, e.ename, e.sal, s.grade
    FROM emp e, salgrade s
    WHERE e.sal BETWEEN s.losal AND s.hisal
    ORDER BY 1;
    
-- 스칼라 서브쿼리(scalar sub-query) : SELECT절에 SELECT를 기술    
SELECT e.empno, e.ename, e.sal, (SELECT grade FROM salgrade WHERE e.sal BETWEEN losal AND hisal) AS salgrade
    FROM emp e
    ORDER BY 1;

-- 오류: 다중행 결과가 나오면 안된다.
-- 01427. 00000 -  "single-row subquery returns more than one row"
-- SELECT e.empno, e.ename, e.sal, (SELECT grade FROM salgrade) AS salgrade FROM emp e ORDER BY 1;

-- 오류: 다중 칼럼이 나오면 안된다.
-- SELECT e.empno, e.ename, e.sal, (SELECT grade, losal, hisal FROM salgrade WHERE e.sal BETWEEN losal AND hisal) AS salgrade FROM emp e ORDER BY 1;

-- 부서코드, 부서이름
SELECT e.empno, e.ename, e.sal, e.deptno,
    (SELECT grade FROM salgrade WHERE e.sal BETWEEN losal AND hisal) AS salgrade,
    (SELECT dname FROM dept WHERE e.deptno = dept.deptno) AS dname
    FROM emp e
    ORDER BY 1;
