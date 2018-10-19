if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_AK7L9dydtIYBuRA2bZ1Di8r3',
    secret_key: 'sk_test_gjEC6s8VIBMmQLovuwWhXCvY'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
