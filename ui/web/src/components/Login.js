import axios from 'axios';  
import {
    useNavigate 
  } from "react-router-dom";

import React, { useState } from 'react'  

const Login = ()=>{

    let navigate = useNavigate();


  const [user,setUser]=useState({email:'',password:''})

  const handleChange=(e)=>{
      setUser({...user, [e.target.name]: e.target.value}); 
  }


  const submitForm=(e)=>{
      e.preventDefault(); 
     const sendData = {
      
          email:user.email,
          password:user.password

      }

     // console.log(sendData);

      axios.post('http://localhost/MyProjects/api/login-api',sendData)
      .then((result)=>{
          if (result.data.Status === '200') { 
              window.localStorage.setItem('email', result.data.email);
              window.localStorage.setItem('userName', (result.data.username ));  
              navigate(`/alluser`);
          }
      else  {
         alert('Invalid User'); 
      }
    })  
  }















    return (
      <div >
      <div>
      <br/>
      
      <br/>
      <br/>
      <br/>
        <div className="container">
        <div className="w-75 mx-auto shadow p-5" style={{backgroundColor:"hsl(0,100%,25%,0.2)"}}>
         

          <form onSubmit={submitForm}>
        <div className="main-box">
        <div className="row">
             <div className="col-md-12 text-center"> <h1>Login Page</h1></div>
        </div>
        <div className="row">
           <div className="col-md-3">Email:</div>
           <div className="col-md-8"><input typs="email" name="email"  
           onChange={handleChange} value={user.email} /></div>
        </div>
        <div className="row">
           <div className="col-md-3">Password:</div>
           <div className="col-md-6"><input typs="password" name="password"
            onChange={handleChange} value={user.password}
            /></div>
        </div>
<br/>

        <div className="row">
           <div className="col-md-12 text-center">
               <input type="submit" name="submit"  className="btn btn-success" value="Plese Login" />
           </div>
           
        </div>
        </div>
        </form>


          
        </div>
      </div>
      </div>
      


      </div>
    );
};

export default Login;