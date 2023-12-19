import React from 'react';
import { Outlet } from 'react-router-dom';

const Layout = () => (
  <>
    <header>
      <nav>
        <ul>
          <li>
            <a href="/" className="active">Dashboard</a>
          </li>
          <li>
            <a href="/users">Employees</a>
          </li>
          <li>
            <a href="/expenses">Expenses</a>
          </li>
        </ul>
      </nav>
    </header>

    <main>
      <Outlet />
    </main>
  </>
);

export default Layout;
