import React from 'react';
import { Meta, StoryObj } from '@storybook/react';
import ButtonComponent, { ButtonProps } from './index';

const meta: Meta<ButtonProps> = {
  title: 'Design/Button',
  component: ButtonComponent,
  args: {
    children: 'Button',
    size: 'md',
    shade: 'primary',
    disabled: false,
  },
  argTypes: {
    children: {
      control: 'text',
    },
    shade: {
      options: ['primary', 'secondary'],
      control: { type: 'select' },
    },
    size: {
      options: ['sm', 'md', 'lg'],
      control: { type: 'select' },
    },
    disabled: {
      control: 'boolean',
    },
  },
};

export default meta;
type Story = StoryObj<ButtonProps>;

export const Button: Story = {
  render: props => (
    <ButtonComponent
      size={props.size}
      shade={props.shade}
      disabled={props.disabled}>
      {props.children}
    </ButtonComponent>
  ),
};
