# Github's Email Notification headers
Github's email notifications carry a lot of useful information if you want to set automated systems that act on them or reroute them. Some of these are:

* `Message-ID` contains the following information: `«user»/«repository»/«type»/«id»@github.com` so for example `huuff/exobrain/pull/1@github.com` is a notification about the first [[pull-request]] for my `exobrain` repository
* Also standard [[mailing-list]] headers such as `List-ID`, `List-Post`, `List-Unsuscribe` and `List-Archive`. If your email client understands these, they make it easy to perform actions on the email (such as replying to the issue/pull request or unsuscribing for notifications)
