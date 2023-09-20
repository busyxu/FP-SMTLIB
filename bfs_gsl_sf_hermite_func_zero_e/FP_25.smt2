(declare-fun a_ack!484 () (_ BitVec 32))
(declare-fun b_ack!483 () (_ BitVec 32))
(assert (not (bvsle a_ack!484 #x00000000)))
(assert (not (bvslt b_ack!483 #x00000000)))
(assert (not (bvslt (bvsdiv a_ack!484 #x00000002) b_ack!483)))
(assert (not (= #x00000000 b_ack!483)))
(assert (not (= #x00000002 a_ack!484)))
(assert (not (bvslt a_ack!484 #x00000015)))
(assert (not (= #x00000001 b_ack!483)))
(assert (let ((a!1 (bvult (bvadd #x00000001
                         (bvsub (bvsdiv a_ack!484 #x00000002) b_ack!483))
                  #x00000001)))
  (not a!1)))
(assert (let ((a!1 (concat #x00000000
                   (bvadd #x00000001
                          (bvsub (bvsdiv a_ack!484 #x00000002) b_ack!483)))))
  (bvult a!1 #x0000000000000065)))

(check-sat)
(exit)
