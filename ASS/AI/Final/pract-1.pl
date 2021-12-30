soc(arjun,gayatrinagar).
soc(vankani,victoria).
soc(arjunvankani,ringroad).

city(arjun,bhavnagar).
city(vankani,broda).
city(arjunvankani,ahm).

state(arjun,gujrat).
state(vankani,gujrat).
state(arjunvankani,gujrat).


zip(arjun,364001).
zip(vankani,314001).
zip(arjunvankani,382002).

getaddress(Name,Soci,Mycity,Sta,Code):-

       soc(Name,Soci),
       city(Name,Mycity),
       state(Name,Sta),
       zip(Name,Code).
