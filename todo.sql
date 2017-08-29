brew services start postgresql

createdb todolist

psql todolist

CREATE TABLE todos(
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    details TEXT NOT NULL,
    priority INT NOT NULL DEFAULT 1,
    created_at TIMESTAMP NOT NULL,
    completed_at TIMESTAMP NULL
);

INSERT INTO todos(title, details, priority, created_at, completed_at) VALUES 
('wash car', 'clean my car inside and out', 5, '2017-8-29 10:23:54', null),
('trash', 'take out the trash by tomorrow', 1, '2017-8-29 10:23:54', '2017-8-30 10:23:54'),
('dog bath', 'give rose and gus a bath', 4, '2017-8-29 10:23:54', null),
('grocery', 'go to the grocery to pick up things to make dinner', 2, '2017-8-29 10:23:54', null),
('get gas', 'fill up gas tank for trip', 3, '2017-8-29 10:23:54', null);

SELECT * FROM todos WHERE completed_at IS NULL;

SELECT * FROM todos WHERE priority > 1;

UPDATE todos
SET  completed_at = '2017-8-30 9:23:54'
WHERE id = 4;

DELETE FROM todos WHERE completed_at IS NOT NULL;

