Keen IO on OpenShift - Quickstart!
----------------------------------

This git repository helps you collect analytics data from your OpenShift apps and store it in Keen IO - super fast!

###Step 1. Create OpenShift App###

- Create an account: http://openshift.redhat.com
- Set up your local machine with the client tools: https://www.openshift.com/developers/rhc-client-tools-install

Create a ruby-1.9 application (you can call your application whatever you want) that sources from this quickstart.
<pre>
    rhc app create keen-io ruby-1.9 --from-code https://github.com/keenlabs/keen-io-openshift-quickstart
</pre>

###Step 2. Configure Keen IO###

1. Sign up for a developer account at https://keen.io
2. Retrieve your project_id and access keys from your project
3. Enter those values into <strong>config.rb</strong>

```
  config = {
    project_id: 'put_project_id_here',
    write_key: 'put_write_key_here',
    read_key: 'put_read_key_here'
  }
```

###Step 3. Deploy your app###

```
    git add .
    git commit -m "my first commmit"
    git push
```

###Step 4. View your app!###

```
    http://keen-io-$yournamespace.rhcloud.com
```


More Information
----------------------------

For Keen IO's documentation visit https://keen.io/docs

For more info on the Keen IO Ruby gem, visit https://github.com/keenlabs/keen-gem

For more information on Keen IO visit http://keen.io