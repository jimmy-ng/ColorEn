function arr = buildLeafArray( root )
%BUILDLEAFARRAY build a vector contains leaf node handles
%   function arr = buildLeafArray( root )
%   root: root node of the tree
%   arr: output vector, contains leaf node handles
%   Author: lvhao
%   Email: lvhaoexp@163.com
%   Date: 2014-09-03
persistent vec idx;
if isempty( idx )
    idx = 0;
end
if isempty( vec )
  vec = BinTreeNode();
end

if isempty( root.left ) && isempty( root.right )
  idx = idx + 1;
  root.other.idx = idx;
  vec(idx) = root;
  arr = vec;
  return;
end

if ~isempty( root.left )
  buildLeafArray( root.left );
end

if ~isempty( root.right )
  buildLeafArray( root.right );
end

arr = vec;

end