library;

/// Used to track the amount signed by a user to a specific campaign.
pub struct Signs {
    /// Signing to a campaign; it should be always 1
    sign: u8,
    /// The unique identifier for the campaign.
    campaign_id: u64,
}
impl Signs {
    /// Creates a new sign.
    ///
    /// # Arguments
    ///
    /// * `campaign_id`: [u64] - The unique identifier for the campaign.
    ///
    /// # Returns
    ///
    /// * [sign] - The new sign.
    pub fn new(campaign_id: u64) -> Self {
        Self {
            sign: 1,
            campaign_id,
        }
    }
}