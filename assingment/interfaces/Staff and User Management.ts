import { ActivityLog } from "./Activity Log";

export interface StaffAndUserManagementProps {
    user_id: number;
    staff_username: string;
    role_permissions: string;
    contact_information: string;
    login_credentials: string;
    activity_logs: ActivityLog;
}
