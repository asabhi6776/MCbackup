# MCbackup

<p>MCbackup is DEB/RPM package, by using this we can archive data and upload it to any cloud of our choice. I am using rclone as base for data copy. Script is ready, i am working on the package right now.</p>

## Requirements

<p>rclone and internet access.</p>

## Usage

To use this package, we need to run following commands

```bash
wget https://---------------/mcbackup.zip
unzip mcbackup.zip
#ubuntu
dpkg -i mcbackup-$version-$arch.deb
#redhat
rpm -ivh mcbackup-$version-$arch.rpm
#Use - 
mcbackup -h
```

## Contributing

<p>Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.</p>

## License

[MIT](https://mit-license.org/)

## Thanks

<a href="https://www.buymeacoffee.com/asabhi6776"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" width="200" /></a>
