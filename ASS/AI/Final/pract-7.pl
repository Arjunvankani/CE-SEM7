run:-        
	write("Enter the value of A :" ),    
    read(A),       
	write("Enter the value of B :" ),  
	read(B),      
	write("Enter the value of C :" ),       
	read(C),      
	D = (B*B)-(4*A*C),  
	root(A,B,C,D).
	
root(A,B,C,D):-   
	A=0.0,      
	write("Only one root exists."),   
	ANS = (-C/B),   
	write(ANS);
	D>=0,      
	ANS = (-B - sqrt(D)) / (2*A),   
	ANS1 = (-B + sqrt(D)) / (2*A),    
    write("First root is : "),      
	write(ANS),nl,     
	write("Second root is : "),    
    write(ANS1);
	REAL= (-B) / (2*A),   
	IMG = sqrt(-D) / (2*A), 
	write("Real root is : "), 
	write(REAL),nl,     
	write("Imaginary root is : "),
	write(IMG).