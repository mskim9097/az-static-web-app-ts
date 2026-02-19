import React, { useEffect, useState } from 'react';
import { NavLink } from 'react-router-dom';
import { fetchStudentsCount } from '../services/api';

const StudentsCount: React.FC = () => {
  const [message, setMessage] = useState<string>('Loading...');
  const [error, setError] = useState<string>('');

  useEffect(() => {
    let isMounted = true;

    const load = async () => {
      try {
        setError('');
        setMessage('Loading...');
        const text = await fetchStudentsCount();
        if (isMounted) setMessage(text);
      } catch {
        if (isMounted) {
          setError('Failed to load student count.');
          setMessage('');
        }
      }
    };

    load();
    return () => { isMounted = false; };
  }, []);

  return (
    <div className="container">
      <h1>Number of Students</h1>

      {error ? (
        <div className="alert alert-danger">{error}</div>
      ) : (
        <p>{message}</p>
      )}

      <NavLink className="btn btn-secondary mt-3" to="/">
        Back
      </NavLink>
    </div>
  );
};

export default StudentsCount;