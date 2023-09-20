(declare-fun a_ack!430 () (_ BitVec 64))
(declare-fun b_ack!429 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!430) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!429) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!429) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!429) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!429)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!430)))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!430) ((_ to_fp 11 53) #x412e848000000000)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!429)
                                  ((_ to_fp 11 53) a_ack!430))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!429)
                                  ((_ to_fp 11 53) a_ack!430)))
                  ((_ to_fp 11 53) a_ack!430))))
  (not a!1)))
(assert (fp.leq ((_ to_fp 11 53) a_ack!430) ((_ to_fp 11 53) b_ack!429)))
(assert (FPCHECK_FMUL_UNDERFLOW #x3fc999999999999a b_ack!429))

(check-sat)
(exit)
