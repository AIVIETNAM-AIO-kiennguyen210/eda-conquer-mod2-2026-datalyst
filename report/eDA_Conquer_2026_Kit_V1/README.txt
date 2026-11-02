====================================================================
 AI VIỆT NAM -- eDA CONQUER 2026
 HƯỚNG DẪN SỬ DỤNG BỘ KIT BÁO CÁO
====================================================================

Bộ kit này dùng để viết báo cáo Data Analytics cho eDA Conquer 2026.
CHỈ compile trên Overleaf hoặc Prism — không compile bằng LaTeX cài
trên máy cá nhân.

--------------------------------------------------------------------
1. CÁC FILE TRONG KIT
--------------------------------------------------------------------

- report_template_for_eDA.tex
    File CHÍNH để viết báo cáo. Đọc phần "Hướng dẫn sử dụng báo
    cáo" ở đầu file, rồi thay từng phần bằng nội dung thật của
    nhóm. Đây là file duy nhất cần nộp.

- guide.tex (kèm bản PDF guildline_latex.pdf)
    Tài liệu tra cứu cú pháp LaTeX: chèn hình, bảng, code, đổi
    màu, trích dẫn... Chỉ để tham khảo, không phải file nộp.

- guild_report_template.pdf
    Bản PDF mẫu (đã compile sẵn) của report_template_for_eDA.tex,
    để xem trước layout báo cáo hoàn chỉnh trông như thế nào.
    Chỉ để tham khảo, không phải file nộp.

- eDA_conquer2026.cls, tvietlistings.sty, vipythonhighlight.sty
    File định dạng chung. Không cần nộp và không nên chỉnh sửa.

- references.bib
    Danh sách tài liệu tham khảo (dataset, paper...). Thêm trích
    dẫn vào đây rồi dùng \cite{...} trong bài.

- Figures/
    Thư mục chứa hình ảnh. Thêm hình của nhóm vào đây, ưu tiên
    định dạng .pdf hoặc .svg để chữ trong hình không bị vỡ nét.

--------------------------------------------------------------------
2. CÁC BƯỚC BẮT ĐẦU
--------------------------------------------------------------------

  1) Upload toàn bộ thư mục này lên Overleaf (hoặc Prism), giữ
     nguyên cấu trúc thư mục.
  2) Mở report_template_for_eDA.tex, đọc phần hướng dẫn ở đầu file.
  3) Các section có sẵn (Problem & Analytical Questions -> Data
     & Preparation -> Exploratory Analysis -> Main Analysis ->
     Key Findings & Insights -> Recommendations -> Limitations &
     Next Steps -> References -> Appendix) chỉ là tham khảo,
     không bắt buộc rập khuôn. Điền nội dung thật của nhóm, có
     thể điều chỉnh cho phù hợp với project.
  4) Xoá hết đoạn hướng dẫn mẫu và placeholder
     trước khi nộp.
  5) Compile lại (Recompile) và kiểm tra PDF trước khi nộp.

--------------------------------------------------------------------
3. LỖI THƯỜNG GẶP KHI COMPILE
--------------------------------------------------------------------

  - Lỗi thiếu hình ("File not found"): kiểm tra tên file trong
    \includegraphics{...} có khớp chính xác với file trong
    Figures/ (kể cả hoa/thường).

  - Trích dẫn không hiện ra: nhấn Recompile thêm một lần nữa (cần
    build lại để cập nhật danh mục tham khảo từ references.bib).

  - Không được tự sửa file .cls hoặc .sty: có thể làm hỏng định
    dạng chung. Cần thay đổi trình bày thì liên hệ TA.

====================================================================
