(declare-fun p0_ack!180 () (_ BitVec 64))
(declare-fun x0_ack!179 () (_ BitVec 64))
(declare-fun p2_ack!178 () (_ BitVec 64))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!178))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!179)
                                  ((_ to_fp 11 53) p0_ack!180)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))

(check-sat)
(exit)
