create table if not exists badge_event_log
(
    badge_event_log_id serial
        constraint "PK_c21462f784ece1057b59f4de97d"
            primary key,
    executor           varchar(50)             not null,
    type               "BadgeEventLogType"     not null,
    content            text                    not null,
    created_at         timestamp default now() not null,
    updated_at         timestamp default now() not null,
    badge_details_id   integer
        constraint "badgeDetailsBadgeEventLogIdFk"
            references badge_details
);

alter table badge_event_log
    owner to dev_wallet;

