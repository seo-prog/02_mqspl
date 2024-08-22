-- WHERE 특정 조건에 맞는 데이터만 선택

SELECT
	menu_name,
    menu_price,
    orderable_status
    FROM tbl_menu
    WHERE orderable_status = 'Y';
    
    SELECT 
		menu_name,
        menu_price,
        orderable_status
        FROM tbl_menu
        WHERE 
        -- menu_price = 13000;
        menu_price!= 13000; -- != 는 부정의 의미
        
	-- 대소 비교 연산자와 함꼐 사용
    SELECT 
		menu_code,
        menu_name,
        manu_price
        FROM tbl_menu
        WHERE menu_price >= 20000;
        
	-- AND 연산자 활용
    
    SELECT
		menu_name,
        menu_price,
        category_code,
        orderable_status
        FROM tbl_menu
        WHERE
        orderable_status = 'Y' AND
        category_code = 10;
        

       
	SELECT 
		menu_code,
		menu_name,
		menu_price,
		catagory_code,
		orderable_status
	  FROM tbl_menu
	WHERE
    menu_price >= 5000 AND
    category_code = 10;
    
-- OR 연산자 활용
SELECT
	menu_price,
	catagory_code,
	orderable_status
  FROM tbl_menu
WHERE 
orderable_status = 'Y' OR
category_code = 10
ORDER BY
category_code;

 -- AND 가 OR 보다 우선순위가 높다
 SELECT
	menu_code,
    menu_name,
    menu_price,
    catagory_code,
	orderable_status
    FROM tbl_menu
    WHERE
		category_code = 4 OR
        menu_price = 9000 AND
        menu_code > 10;
        
	-- BEETWEEN 연산자 활용
SELECT 
menu_code,
    menu_name,
    catagory_code
    FROM tbl_menu
    WHERE 
    menu_price NOT BETWEEN 10000 AND 25000
    ORDER BY
    menu_price;
    
-- like 연산자 활용 (부정 가능)
SELECT
	menu_name,
    menu_price
    FROM tbl_menu
    WHERE menu_name NOT LIKE '%마늘%'
	ORDER BY menu_name;


-- IN 연산자 활용 (부정 가능)
SELECT
		menu_name,
        category_code
        FROM tbl_menu
        WHERE category_code  NOT IN ( 4,5,6 )
        ORDER BY
        category_code;
        
	-- IS NULL 연산자 활용 ( 부정 가능 )
    SELECT
		category_code,
        category_name,
        ref_catedory_code
        FROM tbl_menu
        WHERE ref_category_code IS NOT NULL;
        
        
        
        
    
    
    
    
    
    

    


    
    
        
        
        
        
        
    
    
        
        
        