CREATE DATABASE scm DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE DATABASE amon DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE DATABASE rman DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE DATABASE hue DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE DATABASE metastore DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE DATABASE sentry DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE DATABASE nav DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE DATABASE navms DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE DATABASE oozie DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;


GRANT ALL ON scm.* TO 'scm'@'%' IDENTIFIED BY '<redacted>';
GRANT ALL ON amon.* TO 'amon'@'%' IDENTIFIED BY '<redacted>';
GRANT ALL ON rman.* TO 'rman'@'%' IDENTIFIED BY '<redacted>';
GRANT ALL ON hue.* TO 'hue'@'%' IDENTIFIED BY '<redacted>';
GRANT ALL ON metastore.* TO 'metastore'@'%' IDENTIFIED BY '<redacted>';
GRANT ALL ON sentry.* TO 'sentry'@'%' IDENTIFIED BY '<redacted>';
GRANT ALL ON nav.* TO 'nav'@'%' IDENTIFIED BY '<redacted>';
GRANT ALL ON navms.* TO 'navms'@'%' IDENTIFIED BY '<redacted>';
GRANT ALL ON oozie.* TO 'oozie'@'%' IDENTIFIED BY '<redacted>';




CHANGE MASTER TO    MASTER_HOST='cm',
        MASTER_USER='root',
      MASTER_PASSWORD='<redacted>',
     MASTER_LOG_FILE='mysql-bin.000003',
    MASTER_LOG_POS=245;



    MariaDB [(none)]> SHOW SLAVE STATUS \G
*************************** 1. row ***************************
               Slave_IO_State: Waiting for master to send event
                  Master_Host: cm
                  Master_User: root
                  Master_Port: 3306
                Connect_Retry: 60
              Master_Log_File: mysql-bin.000005
          Read_Master_Log_Pos: 377
               Relay_Log_File: mariadb-relay-bin.000005
                Relay_Log_Pos: 661
        Relay_Master_Log_File: mysql-bin.000005
             Slave_IO_Running: Yes
            Slave_SQL_Running: Yes