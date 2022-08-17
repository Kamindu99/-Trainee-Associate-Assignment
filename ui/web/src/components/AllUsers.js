import React, { Component } from "react";
import axios from "axios";

export default class AllUsers extends Component {
    
    constructor(props) {
        super(props);
        this.state = {
          allUsers: [],
        };
      }
    
      componentDidMount() {
        this.retrieveAllusers();
      }
    
      retrieveAllusers() {
        axios.get("http://localhost/api").then((res) => {
          if (res.data.success) {
            this.setState({
              allUsers: res.data,
            });
          }
        });
      }
    
    
   

      render() {
    return(
      <div>
        <div >
 

<table className="table container" style={{marginTop:"100px"}}>
  <thead>
    <tr>
      <th scope="col"> ID</th>
      <th scope="col">Name</th>
      <th scope="col">User Name</th>
      <th scope="col">Email</th>
    </tr>
  </thead>
  <tbody>
  {this.state.allUsers.map((user, idx) => (
    <tr>
      <td>User_0{idx + 1}</td>
      <td>{user.name}</td>
      <td>{user.username}</td>
      <td>{user.email}</td>
  
    </tr>
  ))}
  </tbody>
</table>




<br/><br/>
</div>
        </div>
   );
}
}


