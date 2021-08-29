--���̺� ����
create table test(
	id varchar(100),
	pw varchar(100),
	email varchar(100)
)

--�ٸ� ���̺�
create table mr_member(
ID varchar2(15) primary key,
PW varchar2(25) not null,
EMAIL varchar2(15) unique not null 
);

--�������� ���̺� ����
create table survey(
sur_num number(5) primary key,
sur_id varchar2(15) not null,
sur_date date,
que1 varchar2(2) not null,
que2 varchar2(2) not null,
que3 varchar2(2) not null,
que4 varchar2(2) not null,
que5 varchar2(2) not null,
que6 varchar2(2) not null,
que7 varchar2(2) not null,
que8 varchar2(2) not null,
que9 varchar2(2) not null,
que10 varchar2(2) not null
);


--������ȣ ������ ����(sur_seq)
create sequence sur_seq
increment by 1
start with 1

--��ǰ��ȣ ������ ����(pro_seq)
create sequence pro_seq
increment by 1
start with 1

--��ǰ ���̺� ����
create table product(
pro_num number(10) primary key,
pro_name varchar2(1000) not null,
pro_url varchar2(1000) not null unique
);


--������ǰ ���̺� ����
create table interest_pro(
inter_date date,
pro_name varchar2(1000) not null,
pro_url varchar2(1000) not null,
mem_id varchar2(15) not null,
constraint inter_pro_pk primary key (mem_id,pro_url),
constraint interest_mem_fk foreign key (mem_id) references mr_member(id),
constraint interest_pro_fk foreign key (pro_url) references product(pro_url)
);

--���̺� �˻�
select * from survey;
select * from mr_member;
select * from interest_pro;
select * from product;

alter table interest_pro modify pro_name varchar2(1000)

create sequence sur_
--������ �Է�
insert into mr_member values('1','1','1')
insert into product values(pro_seq.nextval,'�Ϲ�','http://www.naver.com')
insert into product values(pro_seq.nextval,'�̹�','http://www.daum.net')
insert into product values(pro_seq.nextval,'���','http://www.google.com')
insert into product values(pro_seq.nextval,'���','http://www.chosun.ac.kr')
insert into product values(pro_seq.nextval,'�������̾�TS��Ǫ','https://search.shopping.naver.com/search/all?query=�������̾�TS��Ǫ')
insert into product values(pro_seq.nextval,'�ھ����� Ż�������ɾ� ����ɾ� ������','https://search.shopping.naver.com/search/all?query=�ھ����� Ż�������ɾ� ����ɾ� ������')
insert into product values(pro_seq.nextval,'�ھ����� Ż�������ɾ� �����ɾ� ������ ��߿�','https://search.shopping.naver.com/search/all?query=�ھ����� Ż�������ɾ� �����ɾ� ������ ��߿�')

insert into product values(pro_seq.nextval,'�ھ����� Ż�������ɾ� ����xī���� �߰Ǽ� ����','https://search.shopping.naver.com/search/all?query=%EC%9E%90%EC%96%91%EC%9C%A4%EB%AA%A8%20%ED%83%88%EB%AA%A8%EC%A6%9D%EC%83%81%EC%BC%80%EC%96%B4%20%EC%A4%91%EA%B1%B4%EC%84%B1%20%EB%91%90%ED%94%BC&frm=NVSHATC&prevQuery=%EC%9E%90%EC%96%91%EC%9C%A4%EB%AA%A8%20%ED%83%88%EB%AA%A8%EC%A6%9D%EC%83%81%EC%BC%80%EC%96%B4%20%EC%A7%84%EC%84%BCx%EC%B9%B4%ED%8E%98%EC%9D%B8%20%EC%A4%91%EA%B1%B4%EC%84%B1%20%EB%91%90%ED%94%BC')



insert into interest_pro values(sysdate,'�������̾�TS��Ǫ','https://search.shopping.naver.com/search/all?query=�������̾�TS��Ǫ','wnk123')
insert into interest_pro values(sysdate,'���','http://www.chosun.ac.kr','asd')
insert into interest_pro values(sysdate,'���','http://www.google.com','ppp')

--������ ����
delete from test where email = '123@456';

--������ ����
update test set pw = '1234' where name = '1'; 

--������ �˻�(����������)
select * from test

drop sequence sur_seq;
drop table test;
drop table product;
drop table interest_pro;

drop sequence pro_seq;
drop table interest_pro;
drop table product;

create sequence pro_seq
increment by 1
start with 1;

create table product(
pro_num number primary key,
pro_name varchar2(3000) not null,
pro_url varchar2(3000) not null unique
);


create table interest_pro(
inter_date date,
pro_name varchar2(3000) not null,
pro_url varchar2(3000) not null,
mem_id varchar2(15) not null,
constraint inter_pro_pk primary key (mem_id,pro_url),
constraint interest_mem_fk foreign key (mem_id) references mr_member(id),
constraint interest_pro_fk foreign key (pro_url) references product(pro_url)
);

insert into product values(pro_seq.nextval,'�������̾�TS��Ǫ','https://search.shopping.naver.com/search/all?query=�������̾�TS��Ǫ');
insert into product values(pro_seq.nextval,'�ھ����� Ż�������ɾ� ����ɾ� ������','https://search.shopping.naver.com/search/all?query=�ھ�����Ż�������ɾ����ɾ������');
insert into product values(pro_seq.nextval,'�ھ����� Ż�������ɾ� �����ɾ� ������ ��߿�','https://search.shopping.naver.com/search/all?query=�ھ�����Ż�������ɾ���ɾ������¸�߿�');
insert into product values(pro_seq.nextval,'�ھ����� Ż�������ɾ� �߰Ǽ� ����','https://search.shopping.naver.com/search/all?query=�ھ�����Ż�������ɾ��߰Ǽ�����');
insert into product values(pro_seq.nextval,'�ھ����� Ż�������ɾ� ���� ����','https://search.shopping.naver.com/search/all?query=�ھ�����Ż�������ɾ���������');
insert into product values(pro_seq.nextval,'���ͱ׷�Ʈ �ʱ� Ż�������ɾ� ��밢��','https://search.shopping.naver.com/search/all?query=���ͱ׷�Ʈ�ʱ�Ż�������ɾ��밢��');
insert into product values(pro_seq.nextval,'���ͱ׷�Ʈ �ʱ� Ż�������ɾ� ���� ������','https://search.shopping.naver.com/search/all?query=���ͱ׷�Ʈ�ʱ�Ż�������ɾ����������');
insert into product values(pro_seq.nextval,'���ͱ׷�Ʈ  Ż������ �����ɾ� ������ ��߿�','https://search.shopping.naver.com/search/all?query=���ͱ׷�ƮŻ�����������ɾ������¸�߿�');
insert into product values(pro_seq.nextval,'���� ���� �� Ż�� ��Ǫ','https://search.shopping.naver.com/search/all?query=���͹�����Ż��Ǫ');
insert into product values(pro_seq.nextval,'�޸��� ������','https://search.shopping.naver.com/search/all?query=�޸���������');
insert into product values(pro_seq.nextval,'�ٽ� ������','https://search.shopping.naver.com/search/all?query=�ٽ�������');
insert into product values(pro_seq.nextval,'���� ���� ������','https://search.shopping.naver.com/search/all?query=���͹���������');
insert into product values(pro_seq.nextval,'���� ���� ���Ʈ��Ʈ��Ʈ','https://search.shopping.naver.com/search/all?query=���͹������Ʈ��Ʈ��Ʈ');
insert into product values(pro_seq.nextval,'��彺�� ���Ʈ��Ʈ��Ʈ �� �����̾�','https://search.shopping.naver.com/search/all?query=��彺�����Ʈ��Ʈ��Ʈ�������̾�');
insert into product values(pro_seq.nextval,'�� ���Ʈ��Ʈ��Ʈ','https://search.shopping.naver.com/search/all?query=�����Ʈ��Ʈ��Ʈ');
insert into product values(pro_seq.nextval,'������ ��ä','https://search.shopping.naver.com/search/all?query=��������ä');
insert into product values(pro_seq.nextval,'�ٽ� ��ä','https://search.shopping.naver.com/search/all?query=�ٽ���ä');
insert into product values(pro_seq.nextval,'ǻ���� ��ä','https://search.shopping.naver.com/search/all?query=ǻ������ä');
insert into product values(pro_seq.nextval,'�ڸ�� ��ġ ��ä','https://search.shopping.naver.com/search/all?query=�ڸ����ġ��ä');
insert into product values(pro_seq.nextval,'������ ���귯��','https://search.shopping.naver.com/search/all?query=���������귯��');
insert into product values(pro_seq.nextval,'LG���� �޵����','https://search.shopping.naver.com/search/all?query=LG���󿤸޵����');



