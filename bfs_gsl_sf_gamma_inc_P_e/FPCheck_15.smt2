(declare-fun a_ack!54 () (_ BitVec 64))
(declare-fun b_ack!53 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!54) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!53) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!53) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!53) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!53)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!54)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!54) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!54) ((_ to_fp 11 53) b_ack!53))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!53)
                                  ((_ to_fp 11 53) a_ack!54))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!53)
                                  ((_ to_fp 11 53) a_ack!54)))
                  ((_ to_fp 11 53) a_ack!54))))
  (not a!1)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!54) ((_ to_fp 11 53) #x4024000000000000)))
(assert (FPCHECK_FADD_OVERFLOW a_ack!54 #x3ff0000000000000))

(check-sat)
(exit)
