soc(jeel,gayatrinagar).
soc(john,patelpark).
soc(peter,goghacircle).

city(jeel,bhavnagar).
city(john,bhavnagar).
city(peter,surat).

state(jeel,gujrat).
state(john,gujrat).
state(peter,gujrat).


zip(jeel,364001).
zip(john,364001).
zip(peter,362002).

getaddress(Name,Soci,Mycity,Sta,Code):-

       soc(Name,Soci),
       city(Name,Mycity),
       state(Name,Sta),
       zip(Name,Code).
