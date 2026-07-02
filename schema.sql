CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(150) NOT NULL,
    roll VARCHAR(30) UNIQUE NOT NULL,
    registration VARCHAR(30) UNIQUE NOT NULL,
    department VARCHAR(100) NOT NULL,
    semester INT NOT NULL,
    session VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE results (
    id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(id),
    subject_code VARCHAR(20),
    subject_name VARCHAR(150),
    marks NUMERIC(5,2),
    grade VARCHAR(5),
    grade_point NUMERIC(3,2),
    published_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
