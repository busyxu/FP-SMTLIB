(declare-fun a_ack!680 () (_ BitVec 64))
(declare-fun b_ack!679 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!680) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!679) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!679) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!680) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!679)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!680)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!680) ((_ to_fp 11 53) #x412e848000000000)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!679)
                                  ((_ to_fp 11 53) a_ack!680))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!679)
                                  ((_ to_fp 11 53) a_ack!680)))
                  ((_ to_fp 11 53) a_ack!680))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!680) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!680) ((_ to_fp 11 53) b_ack!679)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!679) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!680) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!679)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!680)))))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!679 a_ack!680))

(check-sat)
(exit)
