class User
    def generate
        p "lopcha"
    end
end

module Xinchao
    def generate
        p "module"
    end
end

class ContractorPayslipGenerator < User
    include Xinchao
    # def generate
    #     p "xin chao"
    # end
end

a = ContractorPayslipGenerator.new
a.generate