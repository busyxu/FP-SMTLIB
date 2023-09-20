(declare-fun a_ack!684 () (_ BitVec 64))
(declare-fun b_ack!683 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!684) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!683) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!683) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!684) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!683)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!684)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!684) ((_ to_fp 11 53) #x412e848000000000)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!683)
                                  ((_ to_fp 11 53) a_ack!684))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!683)
                                  ((_ to_fp 11 53) a_ack!684)))
                  ((_ to_fp 11 53) a_ack!684))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!684) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!684) ((_ to_fp 11 53) b_ack!683)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!683) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!684) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!683)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!684)))))
(assert (FPCHECK_FSUB_ACCURACY b_ack!683 a_ack!684))

(check-sat)
(exit)
