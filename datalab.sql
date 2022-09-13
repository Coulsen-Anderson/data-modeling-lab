CREATE TABLE users(
  user_id SERIAL PRIMARY KEY,
  password TEXT,
  username VARCHAR(20),
  email VARCHAR(40)
  );
 
 CREATE TABLE recipes(
   recipes_id SERIAL PRIMARY KEY,
   users_id INTEGER REFERENCES users(user_id),
   ingredients TEXT UNIQUE,
   instructions TEXT,
   public BOOLEAN,
   private BOOLEAN
   );
   
 CREATE TABLE grocerys(
   grocery_id SERIAL PRIMARY KEY,
   users_id INTEGER REFERENCES users(user_id),
   ingredients TEXT REFERENCES recipes(ingredients)
   );
   
 CREATE TABLE events(
   events_id SERIAL PRIMARY KEY,
   users_id INTEGER REFERENCES users(user_id),
   calendar TIME,
   recipes_id INTEGER REFERENCES recipes(recipes_id)
   );


--    https://dbdesigner.page.link/9dm6uMq7gYhbxqLp6