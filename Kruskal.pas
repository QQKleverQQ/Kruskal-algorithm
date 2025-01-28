program KruskalAlgorithm;

uses
  SysUtils, GraphUtils, EdgeList;

var
  vertices: array of Vertex;
  edges: EdgeList;
  i: Integer;
  mst: EdgeList;
begin
  SetLength(vertices, 5); 
  edges := CreateEdgeList;
  
  AddEdge(edges, 0, 1, 10);
  AddEdge(edges, 0, 2, 6);
  AddEdge(edges, 0, 3, 5);
  AddEdge(edges, 1, 3, 15);
  AddEdge(edges, 2, 3, 4);
  
  mst := Kruskal(vertices, edges);
  
  for i := 0 to mst.Count - 1 do
    WriteLn('Edge: ', mst.Edges[i].From, ' - ', mst.Edges[i].To, ' with weight ', mst.Edges[i].Weight);
end.