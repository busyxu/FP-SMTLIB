(declare-fun a_ack!266 () (_ BitVec 64))
(declare-fun b_ack!265 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!266) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!265) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!265) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!265) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!265)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!266)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!266) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!266) ((_ to_fp 11 53) b_ack!265))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!265)
                                  ((_ to_fp 11 53) a_ack!266))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!265)
                                  ((_ to_fp 11 53) a_ack!266)))
                  ((_ to_fp 11 53) a_ack!266))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!266) ((_ to_fp 11 53) #x4024000000000000))))

(check-sat)
(exit)
