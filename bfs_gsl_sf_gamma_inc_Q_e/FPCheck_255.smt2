(declare-fun a_ack!678 () (_ BitVec 64))
(declare-fun b_ack!677 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!678) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!677) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!677) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!678) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!677)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!678)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!678) ((_ to_fp 11 53) #x412e848000000000)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!677)
                                  ((_ to_fp 11 53) a_ack!678))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!677)
                                  ((_ to_fp 11 53) a_ack!678)))
                  ((_ to_fp 11 53) a_ack!678))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!678) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!678) ((_ to_fp 11 53) b_ack!677)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!677) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!678) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!677)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!678)))))
(assert (FPCHECK_FSUB_OVERFLOW b_ack!677 a_ack!678))

(check-sat)
(exit)
