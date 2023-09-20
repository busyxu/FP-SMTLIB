(declare-fun h_ack!72 () (_ BitVec 64))
(declare-fun x_ack!73 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) x_ack!73)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) h_ack!72)
                                  ((_ to_fp 11 53) #x4010000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (FPCHECK_FADD_ACCURACY x_ack!73 h_ack!72))

(check-sat)
(exit)
