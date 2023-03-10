import React, { useState } from "react";
import {useNavigate} from 'react-router-dom'



function UserLogin({ onLogin, setLoggedIn }) {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [errors, setErrors] = useState([]);
  const [isLoading, setIsLoading] = useState(false);

  let navigate = useNavigate();

  function handleSubmit(e) {
    e.preventDefault();
    setIsLoading(true);
    fetch("/login", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ username, password }),
    }).then((r) => {
      setIsLoading(false);
      if (r.ok) {
        r.json().then((user) => onLogin(user),
        navigate("/userlogin"));
        navigate("/");
        navigate("/");
        setLoggedIn(true)
        navigate("/");
      } else {
        r.json().then((err) =>{
          console.log(err);
          setErrors(err.errors)}
          );
      }
    });
  }

  return (
    <div className="login-form-container">
      <div className="loginform-container">
    <div className="login-form">
    <form  id="login-form" onSubmit={handleSubmit}>
    
        <label htmlFor="username">Username</label>
        <input
          className="input-field"
          type="text"
          id="username"
          autoComplete="off"
          value={username}
          onChange={(e) => setUsername(e.target.value)}
        />

        <label htmlFor="password">Password</label>
        <input
          className="input-field"
          type="password"
          id="password"
          autoComplete="current-password"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
        />

        <button className="fancy-button" variant="fill" color="primary" type="submit">
          {isLoading ? "Loading..." : "Login"}
        </button>

        {errors.map((err) => (
          <error key={err}>{err}</error>
        ))}

    </form>
    </div>
    </div>
    </div>
  );
}

export default UserLogin;