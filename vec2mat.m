function [M, d]=vec2mat(V, c, val)

  switch (nargin)
    case 1,
      M = V;
      return;
    case 2,
      val = 0;
    case 3,
      val = val;
  end

  V = V.';
  V = V(:);

  r = ceil (length (V) / c);

  d = r * c - length (V);
  if (d ~= 0)
    V = [ V ; val*ones(d, 1) ];
  end

  M = reshape (V, c, r).';
    return;
  end