(* Buat column kosong terlebih dahulu *)
procedure tfgetwarnklaim.DGridnourutGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
var
  i: Integer;
begin
  i := ARecord.Index + 1;
  AText := IntToStr(i);
end;
