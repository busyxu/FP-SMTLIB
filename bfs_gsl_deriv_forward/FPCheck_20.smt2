(declare-fun h_ack!66 () (_ BitVec 64))
(declare-fun x_ack!67 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) x_ack!67)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) h_ack!66)
                                  ((_ to_fp 11 53) #x4010000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (FPCHECK_FADD_OVERFLOW x_ack!67 h_ack!66))

(check-sat)
(exit)
