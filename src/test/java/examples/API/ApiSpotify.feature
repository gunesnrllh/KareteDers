Feature: Example

  Background:
    * url 'https://api.spotify.com'
    * def requestList =
	"""
	{
  "name": "MentorLabs",
  "description": "Api Testing",
  "public": true
  "description": "Karate Api Test"
}

	"""
  Scenario: Create a playlist with the given data
    Given path '/v1/users/314e3gqjoebvwwibxkdzbktrn7xa/playlists'
    And header Authorization = "Bearer BQCxBA-NsFIDQntGyHCvkR5DWNVk9xLEiCIxybBgUJu4uO5_w0VnqlHVeK4hJVjk8q-iZOEMLEtbHrhYfB8pVMSfFgBohk1yLfFWwnttafU_ZsZUDNzg_KTnI8uSlsEopMTEtEbsY4dU5H_uBVje8Q3R6-V3UDJ7Wtnftfsrj8Q1XCQm-MunLIYbdKf8TxrXwUhiLpj83ATrJj-EFdDsATKyWT8s6tX_w6X-RnukiZSvhOwhGOedHuFU7Y11NoXp1nM3c58RCMp_"
    And request requestList
    When method post
    Then status 201

  Scenario: Get created playlist path
    Given path 'v1/me/playlists'
    And header Authorization = "Bearer BQCxBA-NsFIDQntGyHCvkR5DWNVk9xLEiCIxybBgUJu4uO5_w0VnqlHVeK4hJVjk8q-iZOEMLEtbHrhYfB8pVMSfFgBohk1yLfFWwnttafU_ZsZUDNzg_KTnI8uSlsEopMTEtEbsY4dU5H_uBVje8Q3R6-V3UDJ7Wtnftfsrj8Q1XCQm-MunLIYbdKf8TxrXwUhiLpj83ATrJj-EFdDsATKyWT8s6tX_w6X-RnukiZSvhOwhGOedHuFU7Y11NoXp1nM3c58RCMp_"
    When method get
    * def transactionId = $response.items[*].id
    Then status 200

  Scenario: Add a song to a created playlist


    Given path '/search'
    And param q = 'Bohemian Rhapsody'
    And param type = 'track'
    When method GET
    And def URI = response.tracks.items[0].uri
    * header Authorization = 'Bearer BQCxBA-NsFIDQntGyHCvkR5DWNVk9xLEiCIxybBgUJu4uO5_w0VnqlHVeK4hJVjk8q-iZOEMLEtbHrhYfB8pVMSfFgBohk1yLfFWwnttafU_ZsZUDNzg_KTnI8uSlsEopMTEtEbsY4dU5H_uBVje8Q3R6-V3UDJ7Wtnftfsrj8Q1XCQm-MunLIYbdKf8TxrXwUhiLpj83ATrJj-EFdDsATKyWT8s6tX_w6X-RnukiZSvhOwhGOedHuFU7Y11NoXp1nM3c58RCMp_'
    Given path '/playlists/' +transactionId+ '/tracks'
    * def rBody = {uris:[#(URI)]}
    And request rBody
    When method POST
    Then status 200

