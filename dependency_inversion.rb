class UserReader
    def get
      raise "NotImplemented"
    end
end

class PostgresUserReader < UserReader
    def get
      # Code to read data from Postgres
    end
end

class FullTimePayslipGenerator < Generator
    def initialize(datasource)
      @datasource = datasource
    end
  
    def generate
      # Code to generate payslip
      data = datasource.get()
    end
end

class PostgresUserReader < UserReader
    def initialize(config)
      config = config
    end
  
    def get
      # initialize DB with the config
      self.config
      # Code to read data from Postgres
    end
end

config = { url: "url", user: "user" }
datasource = PostgresUserReader.new(config)
FullTimePayslipGenerator.new(datasource)