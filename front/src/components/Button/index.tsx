import React from 'react';
import tw, { styled } from 'twin.macro';

type Size = 'sm' | 'md' | 'lg';
type Color = 'primary' | 'secondary';
type StyledProps = {
  size: Size;
  shade: Color;
};

export type ButtonProps = React.ComponentProps<'button'> & {
  shade?: Color;
  size?: Size;
};

const px = {
  sm: tw`px-3.5`,
  md: tw`px-4`,
  lg: tw`px-5`,
};

const py = {
  sm: tw`py-2`,
  md: tw`py-2.5`,
  lg: tw`py-4`,
};

const fontSize = {
  sm: tw`text-xs`,
  md: tw`text-sm`,
  lg: tw`text-base`,
};

const shades = {
  primary: tw`
      text-white bg-blue-500
      hover:bg-blue-700
      focus:(text-white bg-blue-700)
      disabled:(text-gray-300 bg-gray-100)`,
  secondary: tw`
      text-sky-500 bg-sky-50
      hover:bg-sky-100
      focus:bg-sky-400
      disabled:(text-gray-300 bg-gray-100)`,
};

const StyledButton = styled.button<StyledProps>`
  ${tw`
    rounded-lg
    border-solid
    border
    border-transparent
    flex
    items-center
    font-semibold
  `}
  ${({ size }) => fontSize[size]}
  ${({ shade }) => shades[shade]}
  ${({ size }) => [py[size], px[size]]}
`;

const Button = ({
  children,
  shade = 'primary',
  size = 'md',
  ...props
}: ButtonProps) => (
  <StyledButton
    {...props}
    size={size}
    shade={shade}>
    {children}
  </StyledButton>
);

export default Button;
