careers = {
    :career_1 => {
        needs_math: false,
        base_salary: 100_000
    },
    :career_2 => {
        needs_math: false,
        base_salary: 200_000
    },
    :career_3 => {
        needs_math: true,
        base_salary: 300_000
    },
    :career_4 => {
        needs_math: true,
        base_salary: 400_000
    }
}

# select builds a new hash from an old one and keeps the key-value pairs that meet a certain condition

need_math = careers.select { |k, v| v.fetch(:needs_math)}
puts
p need_math # {:career_3=>{:needs_math=>true, :base_salary=>300000}, :career_4=>{:needs_math=>true, :base_salary=>400000}}

# reject builds a new hash from an old one but excludes the key-value pairs that meet a certain condition

bad_salary = careers.reject { |k, v| v.fetch(:base_salary) > 250_000}
puts
p bad_salary # {:career_1=>{:needs_math=>false, :base_salary=>100000}, :career_2=>{:needs_math=>false, :base_salary=>200000}}