# Single Responsibility Principle - SRP
class User
    def initialize(employee, month)
        @employee = employee
        @month = month
    end
    def generate_payslip
        # Code to read from database,
        # generate payslip
        # and write it to a file
        self.send_mail
    end
    def send_mail
        employee.email
        month
    end
end

# Code after use Single reponsibility principle

class PayslipGenerator
    def initialize(employee, month)
        @employee = employee
        @month = month
    end
    def generate_payslip
        # Code to read from database,
        # generate payslip
        # and write it to a file
    end
end

class PayslipMailer
    def initialize(employee)
        @employee = employee
    end
    def send_mail
        # code to send email
        employee.email
        month
    end
end