import React from 'react';

type Props = {
  title: string;
  data: any;
}

const Widget = ({ title, data }: Props) => {
  return (
    <div className="widget">
      <strong>{title}: {data}</strong>
    </div>
  );
}

export default Widget;
