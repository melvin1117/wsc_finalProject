function validate()
{
var name=document.getElementById("name").value;
console.log(name);
var email=document.getElementById("email").value;
var adr=document.getElementById("adr").value;
var car_model=document.getElementById("car_model").value;
var vehicle_number=document.getElementById("vehicle_number").value;
var mob=document.getElementById("mob").value;
var count=0;
if(name=="")
	{
	document.getElementById("error-name").style.display=null;
	document.getElementById("error-name").innerHTML="<span class=\"close\" data-dismiss=\"alert\">&times;</span>Name cannot be empty.";
	count++;
	}
else{
if(!isNaN(name))
	{
	document.getElementById("error-name").style.display=null;
	document.getElementById("error-name").innerHTML="<span class=\"close\" data-dismiss=\"alert\">&times;</span>Name must not contain characters other than alphabets.";
	count++;
	}
}
if(mob=="")
{
document.getElementById("error-mob").style.display=null;
document.getElementById("error-mob").innerHTML="<span class=\"close\" data-dismiss=\"alert\">&times;</span>Mobile cannot be empty.";
count++;
}
else{
if(isNaN(mob))
{
document.getElementById("error-mob").style.display=null;
document.getElementById("error-mob").innerHTML="<span class=\"close\" data-dismiss=\"alert\">&times;</span>Mobile must not contain characters other than numerals.";
count++;
}
else{
if(/^\d{10}$/.test(mob))
	{
	
	}
else
	{
	document.getElementById("error-mob").style.display=null;
	document.getElementById("error-mob").innerHTML="<span class=\"close\" data-dismiss=\"alert\">&times;</span>Mobile number must be of 10 digits only.";
	count++;
	}
}
}
if(email=="")
	{
	document.getElementById("error-email").style.display=null;
	document.getElementById("error-email").innerHTML="<span class=\"close\" data-dismiss=\"alert\">&times;</span>Email cannot be empty.";
	count++;
	}
else
	{
	var pattern=/^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;
	if(pattern.test(email))
		{
		
		}
	else
		{
		document.getElementById("error-email").style.display=null;
		document.getElementById("error-email").innerHTML="<span class=\"close\" data-dismiss=\"alert\">&times;</span>Email is not valid.";
		count++;
		}
	}
if(car_model=="")
	{
	document.getElementById("error-car_model").style.display=null;
	document.getElementById("error-car_model").innerHTML="<span class=\"close\" data-dismiss=\"alert\">&times;</span>Car Model cannot be empty.";
	count++;
	}
if(vehicle_number=="")
	{
	document.getElementById("error-vehicle_number").style.display=null;
	document.getElementById("error-vehicle_number").innerHTML="<span class=\"close\" data-dismiss=\"alert\">&times;</span>Vehicle Number cannot be empty.";
	count++;
	}
if(adr=="")
{
document.getElementById("error-adr").style.display=null;
document.getElementById("error-adr").innerHTML="<span class=\"close\" data-dismiss=\"alert\">&times;</span>Address cannot be empty.";
count++;
}

	if(count==0)
		{
		document.getElementById("sub").click();
		}
}