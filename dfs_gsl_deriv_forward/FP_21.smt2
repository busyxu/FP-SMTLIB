(declare-fun h_ack!258 () (_ BitVec 64))
(declare-fun x_ack!259 () (_ BitVec 64))
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) x_ack!259)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) h_ack!258)
                                  ((_ to_fp 11 53) #x4010000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))

(check-sat)
(exit)
