procedure TForm1.FormShow(Sender: TObject);
begin
  if mIDNIK.Text = '' then
      begin
         mIDNIK.Text := FPlaceholder; // Menetapkan kembali placeholder jika tidak ada teks
         mIDNIK.Style.TextColor := clGray;
      end
   else
      mIDNIK.Style.TextColor := clBlue; // Mengatur warna teks placeholder
end;

procedure tficslm_in.mIDNIKEnter(Sender: TObject);
begin
   if mIDNIK.Text = FPlaceholder then
      begin
         mIDNIK.Text := ''; // Menghapus placeholder saat TEdit fokus
         mIDNIK.Style.TextColor := clBlack; // Mengatur warna teks normal
      end;
end;

procedure tficslm_in.mIDNIKExit(Sender: TObject);
begin
   if mIDNIK.Text = '' then
      begin
         mIDNIK.Text := FPlaceholder; // Menetapkan kembali placeholder jika tidak ada teks
         mIDNIK.Style.TextColor := clGray;
      end
   else
      mIDNIK.Style.TextColor := clBlue; // Mengatur warna teks placeholder
end;

procedure tficslm_in.mIDNIKKeyPress(Sender: TObject; var Key: Char);
begin
   if mIDNIK.Text = FPlaceholder then
  begin
    mIDNIK.Text := ''; // Menghapus placeholder saat pengguna mulai mengetik
    mIDNIK.Style.TextColor := clBlack; // Mengatur warna teks normal
  end;
end;
