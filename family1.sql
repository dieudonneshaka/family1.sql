
CREATE TABLE family(
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY,
    last_name VARCHAR(255) NULL,
    PRIMARY KEY(id)
);


CREATE TABLE person(
  id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY(id)
);



CREATE TABLE family_person(
  family_id BIGINT NOT NULL REFERENCES family(id),
  person_id BIGINT NOT NULL REFERENCES person(id),
  PRIMARY KEY(family_id, person_id)
);


CREATE TABLE hobby(
  id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE person_hobby(
  person_id BIGINT NOT NULL REFERENCES person(id),
  hobby_id BIGINT NOT NULL REFERENCES hobby(id),
  PRIMARY KEY(person_id, hobby_id)
);



INSERT INTO person_hobby(hobby_id, person_id)
VALUES(1,1);


INSERT INTO family (last_name)
VALUES ('dieudonne');

INSERT INTO person (name)
VALUES ('ngororano');

INSERT INTO family_person(family_id,person_id)
VALUES(1,1);

INSERT INTO hobby (name)
VALUES ('basketball');

INSERT INTO person_hobby(person_id, hobby_id)
VALUES(1, 1);

