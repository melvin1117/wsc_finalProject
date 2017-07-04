function validateVender()
{
var vname=document.getElementById("vname").value;
var oname=document.getElementById("oname").value;
console.log(name);
var email=document.getElementById("email").value;
var adr=document.getElementById("adr").value;
var city=document.getElementById("city").value;
var country=document.getElementById("country").value;
var state=document.getElementById("state").value;
var mob=document.getElementById("mob").value;
var count=0;
if(vname=="")
	{
	document.getElementById("error-vname").style.display=null;
	document.getElementById("error-vname").innerHTML="<span class=\"close\" data-dismiss=\"alert\">&times;</span>Vender's Name cannot be empty.";
	count++;
	}
else{
if(!isNaN(vname))
	{
	document.getElementById("error-vname").style.display=null;
	document.getElementById("error-vname").innerHTML="<span class=\"close\" data-dismiss=\"alert\">&times;</span>Vender's Name must not contain characters other than alphabets.";
	count++;
	}
}
if(oname=="")
{
document.getElementById("error-oname").style.display=null;
document.getElementById("error-oname").innerHTML="<span class=\"close\" data-dismiss=\"alert\">&times;</span>Owner's Name cannot be empty.";
count++;
}
else{
if(!isNaN(oname))
{
document.getElementById("error-oname").style.display=null;
document.getElementById("error-oname").innerHTML="<span class=\"close\" data-dismiss=\"alert\">&times;</span>Owner'sName must not contain characters other than alphabets.";
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
if(city=="")
	{
	document.getElementById("error-city").style.display=null;
	document.getElementById("error-city").innerHTML="<span class=\"close\" data-dismiss=\"alert\">&times;</span>City cannot be empty.";
	count++;
	}
if(country=="")
{
document.getElementById("error-country").style.display=null;
document.getElementById("error-country").innerHTML="<span class=\"close\" data-dismiss=\"alert\">&times;</span>Country cannot be empty.";
count++;
}
if(state=="")
	{
	document.getElementById("error-state").style.display=null;
	document.getElementById("error-state").innerHTML="<span class=\"close\" data-dismiss=\"alert\">&times;</span>State cannot be empty.";
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