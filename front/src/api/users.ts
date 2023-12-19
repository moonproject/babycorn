const REACT_APP_API_URL = process.env.REACT_APP_API_URL;

export const fetchUsers = async () => {
  let data = [];

  try {
    data = await fetch(`${REACT_APP_API_URL}/v1/users`).then((res) => res.json());
  } catch (error) {
    console.error(error);
  }

  return data;
}

export const updateUser = async (id, data) => {
  await fetch(`http://localhost:3000/api/v1/users/${id}`, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(data)
  });
}
