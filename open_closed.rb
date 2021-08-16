class PayslipGenerator
    def initialize(employee, month)
        @employee = employee
        @month = month
    end
    def generate_payslip
        # Code to read from database,
        # generate payslip
        if employee.contractor?
            # generate payslip for contractor
        else
            # generate a normal payslip
        end
        # and write it to a file
    end
end

#Code after use open/closed principle

class ContractorPayslipGenerator
    def initialize(employee, month)
      @employee = employee
      @month = month
    end
  
    def generate
      # Code to read from the database,
      # generate payslip
      # and write it to a file
    end
  end
  class FullTimePayslipGenerator
    def initialize(employee, month)
      @employee = employee
      @month = month
    end
  
    def generate
      # Code to read from the database,
      # generate payslip
      # and write it to a file
    end
  end