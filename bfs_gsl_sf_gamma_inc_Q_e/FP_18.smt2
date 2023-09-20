(declare-fun a_ack!666 () (_ BitVec 64))
(declare-fun b_ack!665 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!666) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!665) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!665) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!666) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!665)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!666)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!666) ((_ to_fp 11 53) #x412e848000000000)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!665)
                                  ((_ to_fp 11 53) a_ack!666))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!665)
                                  ((_ to_fp 11 53) a_ack!666)))
                  ((_ to_fp 11 53) a_ack!666))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!666) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!666) ((_ to_fp 11 53) b_ack!665)))

(check-sat)
(exit)
