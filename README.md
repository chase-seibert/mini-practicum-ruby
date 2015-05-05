# mini-practicum

This is the basis of an interview question where candidates are asked to make constructive criticism of a pull request.

*Note: the code is intentionally horrible. Avert your eyes!*


## Problems with the code

- [ ] No good commit message
- [ ] `full_name` is nullable but code assumes it's populated
- [ ] `first_name` can fail with names w/o a space
- [ ] User model should change to have separate first and last name fields
- [ ] passwords are stored in plain text
- [ ] no tests for the new view
- [ ] `create` should take an optional full name parameter
- [ ] `reset_all` is a poor name, maybe use `reset_all_passwords`
- [ ] Eight characters is not enough for a password
- [ ] Should use more character classes than just ascii for the password
- [ ] Sending a user-supplied message into an HTML email unescaped
- [ ] View does not handle errors well, bombs out of the entire loop
- [ ] Entire view body should be in an asynchronous task
- [ ] The constant `8` should be named something like `DEFAULT_PASSWORD_LEN`
- [ ] 'Hello, {}' is not internationalized
- [ ] The email does not have a plain text multipart
