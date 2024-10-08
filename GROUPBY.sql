-- GROUPBY  결과 집합을 특정 열의 값에 따라 그룸화 하는데 사용함.
-- HAVING 을 함꼐 사용할 수 있음. - 그룹에 대한 조건 적용

SELECT 
	category_code
    FROM tbl_menu
    GROUP BY category_code;
    
-- COUNT() 함수 활용
SELECT
	category_code,
    count(*)
    FROM tbl_menu
    GROUP BY category_code; -- 해당 카테고리가 몇개씩 있는지 출력해줌
    
-- SUM() 함수 활용
SELECT
	category_code,
    SUM(menu_price)
    FROM tbl_menu
    GROUP BY category_code;
    
    
-- AVG() 함수 활용
SELECT 
category_code,
AVG(menu_price)
FROM tbl_menu
GROUP BY category_code;

-- 2개 이상의 그룹 생성
SELECT 
	menu_price,
    category_code
    FROM tbl_menu
    GROUP BY
		menu_price,
        category_code; -- 두개가 같은 것들만 그룹화 해주겠다 라는 뜻.
        

        

        
        
        
        
        

    
    

    
    
    
    
