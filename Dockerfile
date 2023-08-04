FROM ruby:2.7.6

WORKDIR /app
ENV RAILS_ENV=production

RUN apt-get update && apt-get install -y libpq-dev

COPY Gemfile Gemfile.lock ./

RUN gem install bundler -v '2.4.14' && \
    bundle install --jobs 20 --retry 5 --without development test

COPY . .

EXPOSE 3000

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
