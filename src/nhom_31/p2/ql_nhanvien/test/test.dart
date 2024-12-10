import '../models/nhanvien.dart';
import '../models/nhanvienbanhang.dart';

void main(){
   // Test nhân viên thường
    var nv = NhanVien('NV001', 'Nguyễn Văn A', 5000000);
    print('Thông tin nhân viên thường:');
    nv.hienThiThongTin();

    // Test nhân viên bán hàng
    var nv_BH = NhanVienBanHang('NV002', 'Phạm Thị B', 5000000, 100000000, 0.02);
    print('\nThông tin nhân viên bán hàng:');
    nv_BH.hienThiThongTin();

    // Test setter
    nv_BH.doanhSo = -10000000;
    print('\nSau khi tăng doanh số:');
    nv_BH.hienThiThongTin();
}