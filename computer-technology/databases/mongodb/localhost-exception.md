# Localhost Exception
The name MongoDB gives to its [[tofu]] security model for creating a first user.

Basically, once auth is enabled, if no user has been created you shouldn't be enabled to do anything to MongoDB instances without authenticating. However, to prevent being locked out of managing the cluster, you're allowed only to create a global admin user when no users exist using a localhost connection.
