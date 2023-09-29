export interface ActivityLog {
    log_id: number;
    timestamp: Date;
    user_id: number;
    action: string;
    description: string;
}
