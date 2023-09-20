(declare-fun a_ack!278 () (_ BitVec 64))
(declare-fun b_ack!277 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!278) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!277) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!277) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!277) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!277)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!278)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!278) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!278) ((_ to_fp 11 53) b_ack!277))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!277)
                                  ((_ to_fp 11 53) a_ack!278))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!277)
                                  ((_ to_fp 11 53) a_ack!278)))
                  ((_ to_fp 11 53) a_ack!278))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!278) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!277)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!278)))))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!277 a_ack!278))

(check-sat)
(exit)
