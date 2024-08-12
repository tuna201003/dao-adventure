import Buffer "mo:base/Buffer";
actor {

  let name = "Motoko Bootcamp";
  var manifesto = "learn everything about motoko and buidl dream project";
  let goals = Buffer.Buffer<Text>(0);

  public shared query func getName() : async Text {
    return name;
  };

  public shared query func getManifesto() : async Text {
    return manifesto;
  };

  public func setManifesto(newManifesto : Text) : async () {
    manifesto := newManifesto;
    return;
  };

  public func addGoal(newGoal : Text) : async () {
    goals.add(newGoal);
    return;
  };

  public shared query func getGoals() : async [Text] {
    Buffer.toArray(goals);
  };
};