-- Create the foreign key constraint with ON DELETE CASCADE
ALTER TABLE list_notes
DROP CONSTRAINT fk_list;

ALTER TABLE list_notes
DROP CONSTRAINT fk_note;

ALTER TABLE list_notes
ADD CONSTRAINT fk_list_notes_list
FOREIGN KEY (list_id)
REFERENCES lists(id)
ON DELETE CASCADE;

ALTER TABLE list_notes
ADD CONSTRAINT fk_list_notes_note
FOREIGN KEY (note_id)
REFERENCES notes(id)
ON DELETE CASCADE;

ALTER TABLE list_notes
ADD CONSTRAINT pk_list_notes
PRIMARY KEY (list_id, note_id)
