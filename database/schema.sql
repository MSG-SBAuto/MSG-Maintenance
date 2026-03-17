-- Shutdown Maintenance Dashboard Database

CREATE TABLE shutdown_tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    task_name VARCHAR(255) NOT NULL,
    equipment VARCHAR(255),
    area VARCHAR(100),
    owner VARCHAR(100),

    planned_start DATETIME,
    planned_end DATETIME,

    actual_start DATETIME,
    actual_end DATETIME,

    status VARCHAR(50) DEFAULT 'pending',
    priority VARCHAR(20),

    progress INT DEFAULT 0, -- percentage (0-100)

    remarks TEXT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
