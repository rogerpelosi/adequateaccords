import './App.css';

import { useState, useEffect } from 'react';
// import { BrowserRouter } from 'react-router-dom';

import AboutPage from './components/AboutPage';
import EmailList from './components/EmailList';
import NewEmail from './components/NewEmail';

function App() {

  const [emails, setEmails] = useState([]);

  useEffect(() => {
    fetch('/api/accords')
    .then(resp => resp.json())
    .then(accordsArray => setEmails(accordsArray))
  },[])

  console.log(emails)

  return (
    <div className="App">

      <AboutPage />
      <EmailList />
      <NewEmail />

    </div>
  );
}

export default App;
