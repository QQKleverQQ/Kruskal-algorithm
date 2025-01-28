unit GraphUtils;

interface

uses
  EdgeList;

type
  Vertex = record
    Parent, Rank: Integer;
  end;

function Find(var vertices: array of Vertex; vertex: Integer): Integer;
procedure Union(var vertices: array of Vertex; root1, root2: Integer);
function Kruskal(var vertices: array of Vertex; edges: EdgeList): EdgeList;

implementation

function Find(var vertices: array of Vertex; vertex: Integer): Integer;
begin
  if vertices[vertex].Parent <> vertex then
    vertices[vertex].Parent := Find(vertices, vertices[vertex].Parent);
  Result := vertices[vertex].Parent;
end;

procedure Union(var vertices: array of Vertex; root1, root2: Integer);
begin
  if vertices[root1].Rank < vertices[root2].Rank then
    vertices[root1].Parent := root2
  else if vertices[root1].Rank > vertices[root2].Rank then
    vertices[root2].Parent := root1
  else
  begin
    vertices[root2].Parent := root1;
    Inc(vertices[root1].Rank);
  end;
end;

function Kruskal(var vertices: array of Vertex; edges: EdgeList): EdgeList;
var
  i, root1, root2: Integer;
  mst: EdgeList;
begin
  mst := CreateEdgeList;
  
  for i := 0 to High(vertices) do
  begin
    vertices[i].Parent := i;
    vertices[i].Rank := 0;
  end;

  for i := 0 to edges.Count - 2 do
    for j := i + 1 to edges.Count - 1 do
      if edges.GetEdge(i).Weight > edges.GetEdge(j).Weight then
        edges.Edges[i] := edges.Edges[j];
  
  for i := 0 to edges.Count - 1 do
  begin
    root1 := Find(vertices, edges.GetEdge(i).From);
    root2 := Find(vertices, edges.GetEdge(i).To);
    
    if root1 <> root2 then
    begin
      Union(vertices, root1, root2);
      mst.AddEdge(edges.GetEdge(i).From, edges.GetEdge(i).To, edges.GetEdge(i).Weight);
    end;
  end;

  Result := mst;
end;

end.