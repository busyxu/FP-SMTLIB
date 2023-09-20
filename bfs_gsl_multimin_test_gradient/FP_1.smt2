(declare-fun p0_ack!203 () (_ BitVec 64))
(declare-fun x0_ack!201 () (_ BitVec 64))
(declare-fun p2_ack!200 () (_ BitVec 64))
(declare-fun p1_ack!199 () (_ BitVec 64))
(declare-fun x1_ack!202 () (_ BitVec 64))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!200))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!201)
                                  ((_ to_fp 11 53) p0_ack!203)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not (not a!1))))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x1_ack!202)
                                  ((_ to_fp 11 53) p1_ack!199)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))

(check-sat)
(exit)
