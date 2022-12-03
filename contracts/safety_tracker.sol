pragma solidity ^0.7.0;

contract SafetyTracker {
  // Define product struct
  struct Property {
    uint propertyId;
    string name;
    string origin;
    string destination;
    string location;
    string helpCenter;
    uint quantity;
  }

  // Define an array of products
  Property[] public properties;

  // Function to add a property to the safety tracker
  function addProperty(uint _propertyId, string memory _name, string memory _origin, string memory _destination, string memory _location, uint _quantity) public {
    Property memory newProperty = Property(_propertyId, _name, _origin, _destination, _location, _quantity);
    properties.push(newProperty);
  }

  // Function to update the location of a property in the supply chain
  function updateProperty(uint _propertyId, string memory _location) public {
    for (uint i = 0; i < property.length; i++) {
      if (properties[i].propertyId == _propertyId) {
        properties[i].location = _location;
        return;
      }
    }
  }

  // Function to update the number of unique properties in the safety tracker
  function updateAllProperties(uint _propertyId, uint _quantity) public {
    for (uint i = 0; i < properties.length; i++) {
      if (properties[i].propertyId == _propertyId) {
        properties[i].quantity = _quantity;
        return;
      }
    }
  }

  // Function to update the location of a help center in the safety tracker
  function updateHelpCenter(uint _helpCenterId, uint _helpCenterLocation) public {
    for (uint i = 0; i < helpCenters.length; i++) {
      if (helpCenters[i].helpCenterId == _helpCenterId) {
        helpCenters[i].location = _location;
        return;
      }
    }
  }
}
