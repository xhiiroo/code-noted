(* Membuat tombol Esc menutup form modal *)
(* Klik events formkeydown pada form modal untk mengeksekusi kode ini *)
procedure tfgetpurchprc.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
  begin
    Close;
  end;
end;

(* Tambahkan ke formcreate *)
(* Untuk membuat kode FormKeyDown dapat dijalankan walaupun fokus ada pada komponen lain *)
KeyPreview := True;
