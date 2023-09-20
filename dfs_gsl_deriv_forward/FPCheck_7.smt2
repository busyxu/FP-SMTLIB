(declare-fun h_ack!16 () (_ BitVec 64))
(declare-fun x_ack!17 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) x_ack!17)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) h_ack!16)
                                  ((_ to_fp 11 53) #x4010000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (FPCHECK_FDIV_UNDERFLOW h_ack!16 #x4000000000000000))

(check-sat)
(exit)
