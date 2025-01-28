unit EdgeList;

interface

type
  Edge = record
    From, To, Weight: Integer;
  end;

  EdgeList = object
    Edges: array of Edge;
    function Count: Integer;
    procedure AddEdge(AFrom, ATo, AWeight: Integer);
    function GetEdge(Index: Integer): Edge;
  end;

function CreateEdgeList: EdgeList;

implementation

function CreateEdgeList: EdgeList;
begin
  Result.Edges := nil;
end;

procedure EdgeList.AddEdge(AFrom, ATo, AWeight: Integer);
var
  NewEdge: Edge;
begin
  NewEdge.From := AFrom;
  NewEdge.To := ATo;
  NewEdge.Weight := AWeight;
  SetLength(Edges, Length(Edges) + 1);
  Edges[High(Edges)] := NewEdge;
end;

function EdgeList.Count: Integer;
begin
  Result := Length(Edges);
end;

function EdgeList.GetEdge(Index: Integer): Edge;
begin
  Result := Edges[Index];
end;

end.
