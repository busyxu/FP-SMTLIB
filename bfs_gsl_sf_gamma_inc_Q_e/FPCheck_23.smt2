(declare-fun a_ack!82 () (_ BitVec 64))
(declare-fun b_ack!81 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!82) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!81) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!81) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!82) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!81)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!82)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!82) ((_ to_fp 11 53) #x412e848000000000)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!81)
                                  ((_ to_fp 11 53) a_ack!82))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!81)
                                  ((_ to_fp 11 53) a_ack!82)))
                  ((_ to_fp 11 53) a_ack!82))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!82) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!82) ((_ to_fp 11 53) b_ack!81))))
(assert (FPCHECK_FINVALID_SQRT a_ack!82 a_ack!82))

(check-sat)
(exit)
