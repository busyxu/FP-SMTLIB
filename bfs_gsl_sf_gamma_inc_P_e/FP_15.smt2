(declare-fun a_ack!294 () (_ BitVec 64))
(declare-fun b_ack!293 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!294) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!293) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!293) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!293) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!293)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!294)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!294) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!294) ((_ to_fp 11 53) b_ack!293))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!293)
                                  ((_ to_fp 11 53) a_ack!294))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!293)
                                  ((_ to_fp 11 53) a_ack!294)))
                  ((_ to_fp 11 53) a_ack!294))))
  (not a!1)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!294) ((_ to_fp 11 53) #x4024000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!294)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) a_ack!294))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!294)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) a_ack!294)))

(check-sat)
(exit)
