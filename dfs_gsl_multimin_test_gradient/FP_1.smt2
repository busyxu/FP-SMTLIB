(declare-fun p0_ack!185 () (_ BitVec 64))
(declare-fun x0_ack!184 () (_ BitVec 64))
(declare-fun p2_ack!183 () (_ BitVec 64))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!183))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!184)
                                  ((_ to_fp 11 53) p0_ack!185)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))

(check-sat)
(exit)
