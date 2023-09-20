(declare-fun a_ack!432 () (_ BitVec 64))
(declare-fun b_ack!431 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!432) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!431) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!431) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!431) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!431)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!432)))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!432) ((_ to_fp 11 53) #x412e848000000000)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!431)
                                  ((_ to_fp 11 53) a_ack!432))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!431)
                                  ((_ to_fp 11 53) a_ack!432)))
                  ((_ to_fp 11 53) a_ack!432))))
  (not a!1)))
(assert (fp.leq ((_ to_fp 11 53) a_ack!432) ((_ to_fp 11 53) b_ack!431)))
(assert (FPCHECK_FMUL_ACCURACY #x3fc999999999999a b_ack!431))

(check-sat)
(exit)
