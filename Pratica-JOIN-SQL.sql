--1
SELECT users.id, users.name, cities.name AS city  FROM users JOIN cities on "cityId"=cities.id  Where cities.name='Rio de Janeiro';

--2
SELECT testimonials.id, writer.name AS writer, recipient.name AS recipient, testimonials.message  FROM testimonials 
JOIN users writer ON testimonials."writerId"=writer.id
JOIN users recipient ON testimonials."recipientId"=recipient.id;


--3
SELECT users.id, users.name, courses.name AS course, schools.name AS school, "endDate"  FROM educations 
JOIN users ON educations."userId"=users.id
JOIN courses ON educations."courseId"=courses.id
JOIN schools ON educations."schoolId"=schools.id

WHERE users.id=30 AND educations.status = 'finished';

--4
SELECT users.id, users.name, roles.name AS role, companies.name AS company, "startDate"
FROM experiences
JOIN users ON experiences."userId"=users.id
JOIN roles ON experiences."roleId"=roles.id
JOIN companies ON experiences."companyId"=companies.id

WHERE users.id=50 AND "endDate" ISNULL;


