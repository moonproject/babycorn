import React from 'react';
// import logo from './logo.svg';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import { ToastContainer } from 'react-toastify';

import 'react-toastify/dist/ReactToastify.css';

import Layout from './components/Layout';

import Dashboard from './pages/Dashboard';
import Users from './pages/Users';
import EditUser from './pages/EditUser';
import NoMatch from './pages/NoMatch';

import './App.css';

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Layout />}>
          <Route index element={<Dashboard />} />
          <Route path="/users" element={<Users />} />
          <Route path="/users/:id/edit" element={<EditUser />} />
          <Route path="*" element={<NoMatch />} />
        </Route>
      </Routes>
      <ToastContainer />
    </BrowserRouter>
  );
}

export default App;
