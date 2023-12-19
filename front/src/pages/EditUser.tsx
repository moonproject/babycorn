import React, { useEffect, useState } from 'react';

import { toast } from 'react-toastify';
import { useParams, useNavigate } from 'react-router-dom';
import { useForm } from 'react-hook-form';

import { updateUser } from '../api/users';

import Button from '../components/Button';

const fetchUser = async (id: string) => {
  const res = await fetch(`http://localhost:3000/api/v1/users/${id}`);
  const json = await res.json();
  return json;
}

const EditUser = () => {
  const navigate = useNavigate();
  const { id } = useParams();
  const [user, setUser] = useState(null);
  const { register, handleSubmit } = useForm({
    defaultValues: {
      firstname: user?.firstname,
      lastname: user?.lastname,
    }
  });

  useEffect(() => {
    fetchUser(id).then(res => setUser(res[0]));
  }, [id]);

  const onSubmit = (data) => {
    updateUser(id, data);
    toast.success('User updated');
    navigate('/users');
  };

  return (
    <div>
      <h2>Edit User</h2>

      <form onSubmit={handleSubmit(onSubmit)} style={{ maxWidth: '300px' }}>
        <div className="form-group">
          <label htmlFor="firstname">Firstname</label>
          <input {...register('firstname')} type="text" />
        </div>

        <div className="form-group">
          <label htmlFor="lastname">Lastname</label>
          <input {...register('lastname')} type="text" />
        </div>

        <Button type="submit">Submit</Button>
      </form>
    </div>
  );
};

export default EditUser;
