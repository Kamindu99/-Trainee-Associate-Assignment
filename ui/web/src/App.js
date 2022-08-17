import Login from './components/Login';
import AllUsers from './components/AllUsers';

import {BrowserRouter,Routes,Route} from "react-router-dom";

function App() {
  return (
    <BrowserRouter>
    <Routes>
        
        <Route path="/" element={<Login />}/>
        <Route path="/alluser" element={<AllUsers />}/>
        
    </Routes>
  </BrowserRouter>
    
    
  );
}

export default App;
