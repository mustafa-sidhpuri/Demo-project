abstract class ServerExceptions {
  String message;
  ServerExceptions({this.message = "Something went wrong"});
}

class LoginException extends ServerExceptions {
  LoginException({String message = "Login failed"}) : super(message: message);
}

class SignupException extends ServerExceptions {
  SignupException({String message = "Signup failed"}) : super(message: message);
}

class FetchCustomerException extends ServerExceptions {
  FetchCustomerException({String message = "Failed to fetch customers"})
      : super(message: message);
}

class AddNewCustomerException extends ServerExceptions {
  AddNewCustomerException({String message = "Failed to add customer"})
      : super(message: message);
}

class DeleteCustomerException extends ServerExceptions {
  DeleteCustomerException({String message = "Failed to delete customer"})
      : super(message: message);
}

class AddNewProductException extends ServerExceptions {
  AddNewProductException({String message = "Failed to add product"})
      : super(message: message);
}

class DeleteProductException extends ServerExceptions {
  DeleteProductException({String message = "Failed to delete product"})
      : super(message: message);
}

class UpdateProductException extends ServerExceptions {
  UpdateProductException({String message = "Failed to update product"})
      : super(message: message);
}

class FetchProductException extends ServerExceptions {
  FetchProductException({String message = "Failed to update product"})
      : super(message: message);
}
class AddNewInvoiceException extends ServerExceptions {
  AddNewInvoiceException({String message = "Failed to add invoice"})
      : super(message: message);
}
class UpdateInvoiceException extends ServerExceptions {
  UpdateInvoiceException({String message = "Failed to update invoice"})
      : super(message: message);
}
class DeleteInvoiceException extends ServerExceptions {
  DeleteInvoiceException({String message = "Failed to delete invoice"})
      : super(message: message);
}
class FetchInvoiceException extends ServerExceptions {
  FetchInvoiceException({String message = "Failed to fetch invoice"})
      : super(message: message);
}
class FetchInvoiceNumberException extends ServerExceptions {
  FetchInvoiceNumberException({String message = "Failed to fetch invoice number"})
      : super(message: message);
}
class AddArchitectEngException extends ServerExceptions {
  AddArchitectEngException({String message = "Failed to add architect engineer"})
      : super(message: message);
}
class FetchArchitectEngException extends ServerExceptions {
  FetchArchitectEngException({String message = "Failed to fetch architect engineer"})
      : super(message: message);
}
class DashBoardDataException extends ServerExceptions {
  DashBoardDataException({String message = "Failed to fetch dashboard data"})
      : super(message: message);
}
