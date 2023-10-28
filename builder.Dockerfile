# Use an official Ruby runtime as a parent image
FROM ruby:2.7

# Set the working directory inside the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Run bundle install to install gem dependencies
RUN bundle install

# Add your application code to the container (optional)
# COPY . .

# Define any environment variables if needed
# ENV MY_ENV_VAR=value

# Command to run your application (optional)
# CMD ["ruby", "app.rb"]