CREATE TABLE IF NOT EXISTS Payment (
    paymentId INT AUTO_INCREMENT,         -- 지불 코드, 자동 증가
    userId VARCHAR(12) NOT NULL,          -- 유저 코드 (FK)
    paymentDate DATE NOT NULL,            -- 지불 날짜
    paymentMethod VARCHAR(20) NOT NULL,   -- 지불 방법
    paymentMonth VARCHAR(20),             -- 할부 개월수
    gymProductId VARCHAR(20),             -- 헬스장 상품 코드
    PRIMARY KEY (paymentId),
    FOREIGN KEY (userId) REFERENCES user(u_id)  -- user 테이블과의 외래키 관계 설정
) default CHARSET=utf8;
