import React from 'react';
import { Link } from 'react-router-dom';

const NoMatch = () => (
  <div>
    <h2>Nothing to see here!</h2>
    <div>
        <Link to="/">Go to the home page</Link>
    </div>
  </div>
);

export default NoMatch;
