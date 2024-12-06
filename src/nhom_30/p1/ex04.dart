void main() {
  Object obj = 'Hello';  // Khởi tạo obj là một Object chứa String 'Hello'

  if(obj is String){     // Kiểm tra obj có phải là String không? -> Đúng
    print('obj la String');  // In ra màn hình
  }

  if(obj is! int){      // Kiểm tra obj KHÔNG phải là int? -> Đúng 
    print('obj khong phai la int'); // In ra màn hình
  }

  String str = obj as String;  
  print(str.toUpperCase());
}