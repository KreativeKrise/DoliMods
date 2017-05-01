--


INSERT INTO llx_c_dolicloud_plans (rowid,code,label,price_instance,price_user,price_gb,active) VALUES (1,'Dolibarr ERP & CRM Basic','Basic',0,9,0,1);
INSERT INTO llx_c_dolicloud_plans (rowid,code,label,price_instance,price_user,price_gb,active) VALUES (2,'Dolibarr ERP & CRM Premium','Premium',30,12,0,1);
INSERT INTO llx_c_dolicloud_plans (rowid,code,label,price_instance,price_user,price_gb,active) VALUES (3,'Dolibarr ERP & CRM Forfait Medium','Forfait Medium',69,0,1,1);
INSERT INTO llx_c_dolicloud_plans (rowid,code,label,price_instance,price_user,price_gb,active) VALUES (4,'Dolibarr ERP & CRM Forfait Small','Forfait Small',29,0,1,1);
INSERT INTO llx_c_dolicloud_plans (rowid,code,label,price_instance,price_user,price_gb,active) VALUES (5,'Dolibarr ERP & CRM Forfait Large','Forfait Large',80,0,1,1);
INSERT INTO llx_c_dolicloud_plans (rowid,code,label,price_instance,price_user,price_gb,active) VALUES (6,'Dolibarr ERP & CRM 2Byte Basic','Basic 2Byte',0,9,0,1);


INSERT INTO llx_dolicloud_emailstemplates (rowid,emailtype,lang,topic,content) VALUES (1 ,'PasswordAssistance','en_US','DoliCloud (online Dolibarr ERP & CRM) - Password assistance: how to reset your password','<body>\n                <p>Dear ${person.firstName},</p>\n                <p>\n                    To continue the password reset process for the account ${person.email}\n                    click on the link below.<br />\n                </p>\n                <p><a href="${resetPasswordLink}">${resetPasswordLink}</a></p>\n                <p>Note that this process is to reset the password for your dashboard, not for your application login. You may find more information on all different user/password reset process onto <a href="http://dolicloud.com/en/faq/139-i-forgot-my-login-or-password">the following page</a>.\n                </p>\n                <p>If clicking doesn''t seem to work, you can copy and paste the link into your browser''s\n                   address window, or retype it there. Once you have returned to our site, we will give instructions for resetting your password.</p>\n                <p>If you did not request to have your password reset you can safely ignore this email.\n                   It is likely another user entered your email address by mistake while trying to reset a password. Rest assured your customer account is safe.</p>\n                <p>We will never e-mail you and ask you to disclose or verify your password, credit card, or banking account number. \n                   If you receive a suspicious e-mail with a link to update your account information,\n                   do not click on the link - instead, report the e-mail to us for investigation.</p>\n                <p>\n            Sincerly, <br />\n            The DoliCloud Team <br />\n            ----------------------------------------- <br />\n            EMail: support@dolicloud.com <br />\n            Web: https://www.dolicloud.com\n                </p>\n              </body>');
INSERT INTO llx_dolicloud_emailstemplates (rowid,emailtype,lang,topic,content) VALUES (2 ,'InstanceDeployed','en_US','Welcome to DoliCloud (online Dolibarr ERP & CRM) - Your instance is ready','               <body>\n                <p>Hello ${person.firstName},</p>\n                <p>\n                   We are delighted to welcome you as a user of DoliCloud, the Ondemand service of Dolibarr ERP & CRM.\n                </p>\n                <p>\n                   Your ${appPackage.name} is installed, setup and ready for you.\n                   Here are the details you need to get started:\n                </p>\n                <br /><strong>Your Dolibarr ERP & CRM :</strong>\n                <ul>\n                    <li>URL: <a href="${appInstance.url}?username=${appPackage.defaultUser}">${appInstance.url}</a></li>\n                    <li>Login: ${appPackage.defaultUser}</li>\n                    <li>Password: ${appInstance.defaultPassword}</li>\n                </ul>\n                <br /><strong>Your Dolicloud dashboard :</strong>\n                <ul>\n                    <li>URL: <a href="https://www.on.dolicloud.com/">https://www.on.dolicloud.com/</a></li>\n                    <li>Login: ${person.email}</li>\n                    <li>Password: ${appInstance.defaultPassword}</li>\n                </ul>                \n            \n            <br />\n            Sincerly, <br />\n            The DoliCloud Team <br />\n            ----------------------------------------- <br />\n            EMail: support@dolicloud.com <br />\n            Web: https://www.dolicloud.com\n            </body>\n            ');
INSERT INTO llx_dolicloud_emailstemplates (rowid,emailtype,lang,topic,content) VALUES (3 ,'InvoiceFailure','en_US','DoliCloud (online Dolibarr ERP & CRM) - Invoice Payment Failure','            <body>\n              <p>Dear DoliCloud Customer,</p>\n              <p>\n                An attempt to take payment for invoice(s) owed has failed. Please update your payment method, or contact your bank or payment method provider.<br />\n                Should failure to take this payment continue, access to our service will be discontinued, and any data you have with us maybe lost.<br />\n<br />\nPlease login to your <a href="https://www.on.dolicloud.com/">Dolicloud dashboard</a> to update and fix your credit card or paypal information as soon as possible to prevent any interuptions in service.<br />\nRemind: Your DoliCloud dashboard login is ${person.email}<br />\n              </p>\n              <p>\n                The error we received from your bank was: <br />\n                ${invoice.notes.collect{ it }.join('' '')}\n              </p><br />\n\n            Sincerly, <br />\n            The DoliCloud Team <br />\n            ----------------------------------------- <br />\n            EMail: support@dolicloud.com <br />\n            Web: https://www.dolicloud.com\n            </body>\n          ');
INSERT INTO llx_dolicloud_emailstemplates (rowid,emailtype,lang,topic,content) VALUES (4 ,'CustomerInstanceClosed','en_US','DoliCloud (online Dolibarr ERP & CRM) - Account Closure','            <body>\n              <p>Dear Customer,</p>\n              <p>\n                 We wish to inform you your account has now been closed. We are sorry to see you got, but thank you for your custom.\n                 We hope you will a customer of ours in the future.<br />\nIf you think this is an error, please contact us at support@dolicloud.com\n              </p><br />\n            Sincerly, <br />\n            The DoliCloud Team <br />\n            ----------------------------------------- <br />\n            EMail: support@dolicloud.com <br />\n            Web: https://www.dolicloud.com\n            </body>\n          ');
INSERT INTO llx_dolicloud_emailstemplates (rowid,emailtype,lang,topic,content) VALUES (5 ,'CustomerInstanceClosureRequested','en_US','DoliCloud (online Dolibarr ERP & CRM) - Customer Account Closure Requested Confirmation','            <body>               <p>Dear Customer,</p>               <p>                 We are sorry to see you go, and appreciate the custom you have given us.               </p>               <p>                The closure of your account will be executed at the end of your current trialing or                 billing period <span class="highlight">(${customerAccount.nextBillingDate.format(''dd MMM yyyy'')})</span>.                Once the closure is complete your instance and its                related data will be <span class="emphasis">destroyed and unretrievable</span>.<br />                 If you change your mind before that date you can halt the closure process,                and continue being our customer. For this, go to your <a href="https://www.on.dolicloud.com/">Dolicloud dashboard</a>.<br />                Remind: Your DoliCloud dashboard login is ${person.email}<br />                </p><br />             Sincerly, <br />             The DoliCloud Team <br />             ----------------------------------------- <br />             EMail: support@dolicloud.com <br />             Web: https://www.dolicloud.com             </body>           ');
INSERT INTO llx_dolicloud_emailstemplates (rowid,emailtype,lang,topic,content) VALUES (6 ,'CreditCardExpiring','en_US','DoliCloud (online Dolibarr ERP & CRM) - Urgent: Your credit card is expiring','          <body>\n            <p>Dear Customer,</p>\n            <p>\n              We wish to inform you that your payment method will soon expire.<br />\n              \n              Please login to your <a href="https://www.on.dolicloud.com/">Dolicloud dashboard</a> to update your credit card information as soon as possible to prevent any interuptions in service.<br />\nRemind: Your DoliCloud dashboard login is ${person.email}<br />\n            </p>\n            <p>If you have any questions relating to the above please do not hesitate get in touch.</p>\n<br />\n\n            Sincerly, <br />\n            The DoliCloud Team <br />\n            ----------------------------------------- <br />\n            EMail: support@dolicloud.com <br />\n            Web: https://www.dolicloud.com\n          </body>\n        ');
INSERT INTO llx_dolicloud_emailstemplates (rowid,emailtype,lang,topic,content) VALUES (7 ,'GentleTrialExpiringReminder','en_US','DoliCloud (online Dolibarr ERP & CRM) - Your Trial will soon expire','         <body>\n          <p>Hello ${person.firstName},</p>\n          <p>\n            Just a quick reminder that trial of your online Dolibarr ERP & CRM will expire soon. If you wish to continue using this service, please login to your DoliCloud console to add a payment method (credit card or paypal accepted).\n          </p>\n          <p>\nFor this, click to go on your DoliCloud dashboard: <a href="https://www.on.dolicloud.com/">https://www.on.dolicloud.com/</a><br />\nRemind: Your DoliCloud dashboard login is ${person.email}<br /><br />\nYou If you have entered this information recently, thank you to ignore this email.<br />\n</p>\n          <br />\n            Sincerly, <br />\n            The DoliCloud Team <br />\n            ----------------------------------------- <br />\n            EMail: support@dolicloud.com <br />\n            Web: https://www.dolicloud.com\n        </body>\n       ');
INSERT INTO llx_dolicloud_emailstemplates (rowid,emailtype,lang,topic,content) VALUES (8 ,'ChannelPartnerCreated','en_US','DoliCloud (online Dolibarr ERP & CRM) - Channel Partner Created','         <body>\n          <p>Hello ${person.firstName},</p>\n          <p>\n             We are delighted to welcome you as a Channel Partner of ${appProvider.name}.\n          </p>\n          <p>\n             Your account has been setup for you.\n             Here are the details you need to get started:\n          </p>\n          <ul>\n              <li>Login link: ${serverURL}</li>\n              <li>Username: ${person.email}</li>\n              <li>Temporary Password: ${person.tmpPassword}</li>\n          </ul>                \n          <p>\n              Sincerly, <br />\n              The ${appProvider.name} Team\n          </p>\n        </body>\n        ');
INSERT INTO llx_dolicloud_emailstemplates (rowid,emailtype,lang,topic,content) VALUES (9 ,'CustomerAccountSuspended','en_US','DoliCloud (online Dolibarr ERP & CRM) - Account Suspension','<body>\n <p>Dear Customer,</p> \n <p>We wish to inform you your account has been suspended. This is likely due to a payment problem. If you wish to engage with us in addressing this send an email to support@dolicloud.com </p><br />\n Sincerly, <br /> \n The DoliCloud Team <br />\n ----------------------------------------- <br />\n            EMail: support@dolicloud.com <br />\n            Web: https://www.dolicloud.com\n        </body>\n       ');
INSERT INTO llx_dolicloud_emailstemplates (rowid,emailtype,lang,topic,content) VALUES (10,'CustomerInstanceUpdated','en_US','DoliCloud (online Dolibarr ERP & CRM) - Instance upgrade','<body>\n <p>Dear Customer,</p> \n <p>We wish to inform you your instance has been upgraded to last stable version. If you experience problem after this upgrade, you can contact us at support@dolicloud.com </p><br />\n Sincerly, <br /> \n The DoliCloud Team <br />\n ----------------------------------------- <br />\n            EMail: support@dolicloud.com <br />\n            Web: https://www.dolicloud.com\n        </body>\n       ');



