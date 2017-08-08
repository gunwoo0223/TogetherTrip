
/* Drop Tables */

DROP TABLE manager CASCADE CONSTRAINTS;
DROP TABLE users CASCADE CONSTRAINTS;

DROP TABLE place CASCADE CONSTRAINTS;
DROP TABLE place_img CASCADE CONSTRAINTS;

DROP TABLE restaurant CASCADE CONSTRAINTS;
DROP TABLE restaurant_img CASCADE CONSTRAINTS;

DROP TABLE festival CASCADE CONSTRAINTS;
DROP TABLE festival_img CASCADE CONSTRAINTS;

DROP TABLE stay CASCADE CONSTRAINTS;
DROP TABLE stay_img CASCADE CONSTRAINTS;
DROP TABLE reservation CASCADE CONSTRAINTS;
DROP TABLE hotel CASCADE CONSTRAINTS;
DROP TABLE motel CASCADE CONSTRAINTS;
DROP TABLE pension CASCADE CONSTRAINTS;


DROP TABLE review CASCADE CONSTRAINTS;
DROP TABLE reply CASCADE CONSTRAINTS;

DROP TABLE good CASCADE CONSTRAINTS;






/* Create Sequences */

CREATE sequence place_p_num_seq start with 1 increment by 1 nocache nocycle;

CREATE sequence restaurant_r_num_seq start with 1 increment by 1 nocache nocycle;

CREATE sequence festival_f_num_seq start with 1 increment by 1 nocache nocycle;

CREATE sequence stay_s_num_seq start with 1 increment by 1 nocache nocycle;
CREATE sequence reservation_res_num_seq start with 1 increment by 1 nocache nocycle;

CREATE sequence review_rv_num_seq start with 1 increment by 1 nocache nocycle;
CREATE sequence reply_rp_num_seq start with 1 increment by 1 nocache nocycle;

CREATE sequence good_g_num_seq start with 1 increment by 1 nocache nocycle;








/* Drop Sequences */

DROP sequence place_p_num_seq;

DROP sequence restaurant_r_num_seq;

DROP sequence festival_f_num_seq;

DROP sequence stay_s_num_seq;
DROP sequence reservation_res_num_seq;

DROP sequence review_rv_num_seq;
DROP sequence reply_rp_num_seq;

DROP sequence good_g_num_seq;








/* Create Tables */

CREATE TABLE users
(
	u_id varchar2(50) NOT NULL,
	u_pw varchar2(50) NOT NULL,
	u_name varchar2(50) NOT NULL,
	u_gender varchar2(4) NOT NULL,
	u_phone varchar2(50) NOT NULL,
	u_email varchar2(50) NOT NULL,
	u_address varchar2(1000) NOT NULL,
	u_birth varchar2(1000) NOT NULL,
	u_withdraw varchar2(5) DEFAULT 'N' NOT NULL,
	PRIMARY KEY (u_id)
);
CREATE TABLE manager
(
	m_id varchar2(20) NOT NULL,
	m_pw varchar2(20) NOT NULL,
	m_name varchar2(20) NOT NULL,
	PRIMARY KEY (m_id)
);


CREATE TABLE place
(
	p_num number NOT NULL,
	p_title varchar2(1000) NOT NULL,
	p_loc varchar2(1000) NOT NULL,
	p_state varchar2(1000) NOT NULL,
	p_city varchar2(1000) NOT NULL,
	p_time varchar2(1000) NOT NULL,
	p_holiday varchar2(1000) NOT NULL,
	p_tel varchar2(1000) NOT NULL,
	p_contents varchar2(1999) NOT NULL,
	p_reg_date timestamp NOT NULL,
	p_read_count number DEFAULT 0 NOT NULL,
	m_id varchar2(20) NOT NULL,
	PRIMARY KEY (p_num)
);
CREATE TABLE place_img
(
	p_thumbnail varchar2(100) NOT NULL,
	p_img1 varchar2(100) NOT NULL,
	p_img2 varchar2(100) NOT NULL,
	p_img3 varchar2(100) NOT NULL,
	p_num number NOT NULL
);


CREATE TABLE restaurant
(
	r_num number NOT NULL,
	r_title varchar2(1000) NOT NULL,
	r_loc varchar2(1000) NOT NULL,
	r_state varchar2(1000) NOT NULL,
	r_city varchar2(1000) NOT NULL,
	r_time varchar2(1000) NOT NULL,
	r_holiday varchar2(1000) NOT NULL,
	r_tel varchar2(1000) NOT NULL,
	r_contents varchar2(1999) NOT NULL,
	r_reg_date timestamp NOT NULL,
	r_read_count number DEFAULT 0 NOT NULL,
	r_menu varchar2(1000) NOT NULL,
	m_id varchar2(20) NOT NULL,
	PRIMARY KEY (r_num)
);
CREATE TABLE restaurant_img
(
	r_thumbnail varchar2(100) NOT NULL,
	r_img1 varchar2(100) NOT NULL,
	r_img2 varchar2(100) NOT NULL,
	r_img3 varchar2(100) NOT NULL,
	r_num number NOT NULL
);


CREATE TABLE festival
(
	f_num number NOT NULL,
	f_title varchar2(1000) NOT NULL,
	f_loc varchar2(1000) NOT NULL,
	f_state varchar2(1000) NOT NULL,
	f_city varchar2(1000) NOT NULL,
	f_time varchar2(1000) NOT NULL,
	f_contents varchar2(1999) NOT NULL,
	f_tel varchar2(1000) NOT NULL,
	f_reg_date timestamp NOT NULL,
	f_read_count number DEFAULT 0 NOT NULL,
	m_id varchar2(20) NOT NULL,
	PRIMARY KEY (f_num)
);
CREATE TABLE festival_img
(
	f_thumbnail varchar2(100) NOT NULL,
	f_img1 varchar2(100) NOT NULL,
	f_img2 varchar2(100) NOT NULL,
	f_img3 varchar2(100) NOT NULL,
	f_num number NOT NULL
);


CREATE TABLE stay
(
	s_num number NOT NULL,
	s_title varchar2(1000) NOT NULL,
	s_loc varchar2(1000) NOT NULL,
	s_state varchar2(1000) NOT NULL,
	s_city varchar2(1000) NOT NULL,
	s_tel varchar2(1000) NOT NULL,
	s_contents varchar2(1999) NOT NULL,
	s_reg_date timestamp NOT NULL,
	s_read_count number DEFAULT 0 NOT NULL,
	s_type varchar2(1000) NOT NULL,
	m_id varchar2(20) NOT NULL,
	PRIMARY KEY (s_num)
);
CREATE TABLE stay_img
(
	s_thumbnail varchar2(100) NOT NULL,
	s_img1 varchar2(100) NOT NULL,
	s_img2 varchar2(100) NOT NULL,
	s_img3 varchar2(100) NOT NULL,
	s_num number NOT NULL
);
CREATE TABLE reservation
(
	res_num number NOT NULL,
	res_total_price number NOT NULL,
	res_check_in varchar2(20) NOT NULL,
	res_check_out varchar2(20) NOT NULL,
	res_pay_check varchar2(10) NOT NULL,
	u_id varchar2(50) NOT NULL,
	s_num number NOT NULL,
	PRIMARY KEY (res_num)
);
CREATE TABLE hotel
(
	h_type varchar2(20) NOT NULL,
	h_price number NOT NULL,
	h_image varchar2(100) NOT NULL,
	s_num number NOT NULL
);
CREATE TABLE motel
(
	m_type varchar2(20) NOT NULL,
	m_price number NOT NULL,
	m_image varchar2(100) NOT NULL,
	s_num number NOT NULL
);
CREATE TABLE pension
(
	p_type varchar2(20) NOT NULL,
	p_price number NOT NULL,
	p_image varchar2(100) NOT NULL,
	s_num number NOT NULL
);


CREATE TABLE review
(
	rv_num number NOT NULL,
	rv_title varchar2(1000) NOT NULL,
	rv_contents varchar2(1999) NOT NULL,
	rv_reg_date timestamp NOT NULL,
	rv_read_count number DEFAULT 0 NOT NULL,
	rv_writer varchar2(50) NOT NULL,
	rv_image varchar2(100),
	u_id varchar2(50),
	m_id varchar2(20),
	PRIMARY KEY (rv_num)
);
CREATE TABLE reply
(
	rp_num number NOT NULL,
	rp_contents varchar2(1000) NOT NULL,
	rp_reg_date timestamp NOT NULL,
	rp_writer varchar2(50) NOT NULL,
	rv_num number NOT NULL,
	u_id varchar2(50),
	m_id varchar2(20),
	PRIMARY KEY (rp_num)
);


CREATE TABLE good
(
	g_num number NOT NULL,
	u_id varchar2(50) NOT NULL,
	p_num number,
	r_num number,
	f_num number,
	s_num number,
	PRIMARY KEY (g_num)
);







/* Create Foreign Keys */

ALTER TABLE place
	ADD FOREIGN KEY (m_id)
	REFERENCES manager (m_id)
;
/* 원래 이거였는데 place게시글이 삭제되면 place_img도 같이 삭제되도록 아래처럼 설정
ALTER TABLE place_img
	ADD FOREIGN KEY (p_num)
	REFERENCES place (p_num)
;
*/
ALTER TABLE place_img 
	ADD CONSTRAINT p_pi
	FOREIGN KEY(p_num) REFERENCES place(p_num) 
	ON DELETE CASCADE
;


ALTER TABLE restaurant
	ADD FOREIGN KEY (m_id)
	REFERENCES manager (m_id)
;
/* 원래 이거였는데 restaurant게시글이 삭제되면 restaurant_img도 같이 삭제되도록 아래처럼 설정
ALTER TABLE restaurant_img
	ADD FOREIGN KEY (r_num)
	REFERENCES restaurant (r_num)
;
*/
ALTER TABLE restaurant_img 
	ADD CONSTRAINT r_ri 
	FOREIGN KEY(r_num) REFERENCES restaurant(r_num) 
	ON DELETE CASCADE
;


ALTER TABLE festival
	ADD FOREIGN KEY (m_id)
	REFERENCES manager (m_id)
;
/* 원래 이거였는데 festival게시글이 삭제되면 festival_img도 같이 삭제되도록 아래처럼 설정
ALTER TABLE festival_img
	ADD FOREIGN KEY (f_num)
	REFERENCES festival (f_num)
;
*/
ALTER TABLE festival_img 
	ADD CONSTRAINT f_fi
	FOREIGN KEY(f_num) REFERENCES festival(f_num) 
	ON DELETE CASCADE
;


ALTER TABLE stay
	ADD FOREIGN KEY (m_id)
	REFERENCES manager (m_id)
;
/* 원래 이거였는데 stay게시글이 삭제되면 stay_img도 같이 삭제되도록 아래처럼 설정
ALTER TABLE stay_img
	ADD FOREIGN KEY (s_num)
	REFERENCES stay (s_num)
;
*/
ALTER TABLE stay_img 
	ADD CONSTRAINT s_si
	FOREIGN KEY(s_num) REFERENCES stay(s_num) 
	ON DELETE CASCADE
;
ALTER TABLE reservation
	ADD FOREIGN KEY (u_id)
	REFERENCES users (u_id)
;
/* 원래 이거였는데 stay게시글이 삭제되면 reservation도 같이 삭제되도록 아래처럼 설정
ALTER TABLE reservation
	ADD FOREIGN KEY (s_num)
	REFERENCES stay (s_num)
;
*/
ALTER TABLE reservation
	ADD CONSTRAINT s_r
	FOREIGN KEY (s_num) REFERENCES stay (s_num)
	ON DELETE CASCADE
;
/* 원래 이거였는데 stay게시글이 삭제되면 hotel도 같이 삭제되도록 아래처럼 설정
ALTER TABLE hotel
	ADD FOREIGN KEY (s_num)
	REFERENCES stay (s_num)
;
*/
ALTER TABLE hotel
	ADD CONSTRAINT s_h 
	FOREIGN KEY (s_num) REFERENCES stay(s_num)
	ON DELETE CASCADE
;
/* 원래 이거였는데 stay게시글이 삭제되면 motel도 같이 삭제되도록 아래처럼 설정
ALTER TABLE motel
	ADD FOREIGN KEY (s_num)
	REFERENCES stay (s_num)
;
*/
ALTER TABLE motel
	ADD CONSTRAINT s_m 
	FOREIGN KEY (s_num) REFERENCES stay (s_num)
	ON DELETE CASCADE
;
/* 원래 이거였는데 stay게시글이 삭제되면 pension도 같이 삭제되도록 아래처럼 설정
ALTER TABLE pension
	ADD FOREIGN KEY (s_num)
	REFERENCES stay (s_num)
;
*/
ALTER TABLE pension
	ADD CONSTRAINT s_p 
	FOREIGN KEY (s_num) REFERENCES stay (s_num)
	ON DELETE CASCADE
;


ALTER TABLE review
	ADD FOREIGN KEY (u_id)
	REFERENCES users (u_id)
;
ALTER TABLE review
	ADD FOREIGN KEY (m_id)
	REFERENCES manager (m_id)
;
ALTER TABLE reply
	ADD FOREIGN KEY (u_id)
	REFERENCES users (u_id)
;
ALTER TABLE reply
	ADD FOREIGN KEY (m_id)
	REFERENCES manager (m_id)
;
/* 원래 이거였는데 글삭제되면 댓글도 같이 삭제되도록 아래처럼 다시 설정
ALTER TABLE reply
	ADD FOREIGN KEY (rv_num)
	REFERENCES review (rv_num)
;
*/
ALTER TABLE reply 
	ADD CONSTRAINT rv_rp
	FOREIGN KEY(rv_num) REFERENCES review(rv_num) 
	ON DELETE CASCADE
;


ALTER TABLE good
	ADD FOREIGN KEY (u_id)
	REFERENCES users (u_id)
;
/*
ALTER TABLE good
	ADD FOREIGN KEY (p_num)
	REFERENCES place (p_num)
;
*/
ALTER TABLE good 
	ADD CONSTRAINT p_g
	FOREIGN KEY(p_num) REFERENCES place(p_num) 
	ON DELETE CASCADE
;
/*
ALTER TABLE good
	ADD FOREIGN KEY (r_num)
	REFERENCES restaurant (r_num)
;
*/
ALTER TABLE good 
	ADD CONSTRAINT r_g 
	FOREIGN KEY(r_num) REFERENCES restaurant(r_num) 
	ON DELETE CASCADE
;
/*
ALTER TABLE good
	ADD FOREIGN KEY (f_num)
	REFERENCES festival (f_num)
;
*/
ALTER TABLE good 
	ADD CONSTRAINT f_g
	FOREIGN KEY(f_num) REFERENCES festival(f_num) 
	ON DELETE CASCADE
;
/*
ALTER TABLE good
	ADD FOREIGN KEY (s_num)
	REFERENCES stay (s_num)
;
*/
ALTER TABLE good 
	ADD CONSTRAINT s_g 
	FOREIGN KEY(s_num) REFERENCES stay(s_num) 
	ON DELETE CASCADE
;




/* sql */
INSERT INTO manager (m_id, m_pw, m_name) VALUES ('admin', 'admin', '관리자')

SELECT * FROM place_img
SELECT * FROM festival_img
SELECT * FROM restaurant_img
SELECT * FROM good;

SELECT g.g_num
FROM good g, festival f
WHERE g.f_num = f.f_num
AND g.u_id = 'kk'

SELECT count(*)
FROM good g, festival f
WHERE g.f_num = f.f_num
AND g.u_id = 'kk'

SELECT p.p_num, p.p_title,f.f_title
FROM good g, place p, festival f
WHERE g.p_num = p.p_num
AND g.f_num = f.f_num
AND g.u_id = 'kk'

SELECT f.f_num, f.f_title
FROM good g, festival f
WHERE g.f_num = f.f_num
AND g.u_id = 'kk'

SELECT pi.p_thumbnail, p.p_title, p.p_loc, p.p_tel, p.p_num, g.g_num
	FROM place p, place_img pi, good g
	WHERE p.p_num = g.p_num
	AND p.p_num = pi.p_num
	AND g.u_id = 'kk'

SELECT f_thumbnail, f_num
FROM festival_img
WHERE rownum <= 10
ORDER BY f_num DESC	

INSERT INTO stay
VALUES (stay_s_num_seq.nextval, 'j호텔', '강원도 강릉시', '강원', '강릉시', '02-115-9987', '최고의 호텔입니다.', sysdate, 0, 'h', 'admin')

INSERT INTO stay_img
VALUES ('stay/images/2490181_image2_1.jpg','stay/images/2490188_image2_1.jpg','stay/images/2490193_image2_1.jpg','stay/images/2490198_image2_1.jpg', 1)

INSERT INTO hotel
VALUES ('h', '12000', 'stay/images/2490181_image2_1.jpg', 1)

SELECT * FROM stay;













