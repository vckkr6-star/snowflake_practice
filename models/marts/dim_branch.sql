SELECT

BRANCH_ID,

BRANCH_NAME,

CITY,

STATE,

REGION

FROM {{ ref('stg_branch') }}