import React, { useEffect } from 'react';

import { fullname } from '../utils/user';

const fetchData = async () => {
  let data = [];

  try {
    data = await fetch('http://localhost:3000/api/v1/users').then((res) => res.json());
  } catch (error) {
    console.error(error);
  }

  return data;
}

const Users = () => {
  const [data, setData] = React.useState<User[]>([]);

  useEffect(() => {
    fetchData().then(res => setData(res));
  }, []);

  return (
    <div>
      <h2>Users</h2>

      <table>
        <thead>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
          </tr>
        </thead>
        <tbody>
          {data.map((user) => (
            <tr>
              <td><a href="/users/1/edit">{user.id}</a></td>
              <td>{fullname(user.firstname, user.lastname)}</td>
              <td>{user.email}</td>
            </tr>
          ))}
      </tbody>
      </table>
    </div>
  );
};

export default Users;
