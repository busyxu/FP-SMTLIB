(declare-fun a_ack!132 () (_ BitVec 64))
(declare-fun b_ack!131 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!132) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!131) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!131) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!131) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!131)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!132)))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!132) ((_ to_fp 11 53) #x412e848000000000)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!131)
                                  ((_ to_fp 11 53) a_ack!132))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!131)
                                  ((_ to_fp 11 53) a_ack!132)))
                  ((_ to_fp 11 53) a_ack!132))))
  (not a!1)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!132) ((_ to_fp 11 53) b_ack!131))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!131)
          ((_ to_fp 11 53) a_ack!132))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!131)
          ((_ to_fp 11 53) a_ack!132))))

(check-sat)
(exit)
