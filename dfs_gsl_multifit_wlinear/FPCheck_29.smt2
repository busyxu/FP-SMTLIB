(declare-fun e0_ack!105 () (_ BitVec 64))
(declare-fun e1_ack!106 () (_ BitVec 64))
(declare-fun e2_ack!107 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x1_ack!104 () (_ BitVec 64))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e0_ack!105)
                    ((_ to_fp 11 53) e0_ack!105))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e1_ack!106)
                    ((_ to_fp 11 53) e1_ack!106))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e2_ack!107)
                    ((_ to_fp 11 53) e2_ack!107))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) e1_ack!106)
                                  ((_ to_fp 11 53) e1_ack!106)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (FPCHECK_FMUL_UNDERFLOW x1_ack!104 #x409f400000000000))

(check-sat)
(exit)
