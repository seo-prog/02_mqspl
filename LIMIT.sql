-- LINIT
-- 결과 집합에서 반환 할 행의 수를 제한할 수 있다.

SELECT
  menu_code,
  menu_name,
  menu_price
  FROM tbl_menu
  ORDER BY -- 위에서부터 실행
  menu_price DESC,
  menu_name ASC
  LIMIT 5; -- 상위 !! 5개만 자른다는 뜻! 
  
  
  SELECT
  menu_code,
  menu_name,
  menu_price
  FROM tbl_menu
  ORDER BY 
  menu_price DESC,
  menu_name ASC
  LIMIT 1,4 ; -- 1행초과 (즉, 1이니까 2번째 행부터! 라는 뜻임) 두 번쨰 행부터 4개라는 의미
  
  
  
  