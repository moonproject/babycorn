import React, { useEffect, useState } from 'react';

import { fetchUsers } from '../api/users';
import { fetchExpenses } from '../api/expenses';

import Widget from '../components/Widget';

const Home = () => {
  const [nbUsers, setNbUsers] = useState(0);
  const [nbExpenses, setNbExpenses] = useState(0);
  const [amountExpenses, setAmountExpenses] = useState(0);

  useEffect(() => {
    fetchUsers().then(res => setNbUsers(res.length));
  });

  useEffect(() => {
    fetchExpenses().then(res => setNbExpenses(res.length));
  });

  // useEffect(() => {
  //   fetchExpenses().then(res => {
  //     const amount = res.reduce((acc: any, expense: any) => acc + expense.amount, 0);
  //     setAmountExpenses(amount);
  //   });
  // });

  return (
    <div>
      <h2>Home</h2>

      <div>
        <Widget title="Nb of users" data={nbUsers} />
        <Widget title="Nb of expenses" data={nbExpenses} />
        <Widget title="Expenses amount" data={amountExpenses} />
      </div>
    </div>
  );
};

export default Home;
