(declare-fun a_ack!1009 () (_ BitVec 64))
(declare-fun b_ack!1008 () (_ BitVec 64))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!1008))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fb999999999999a)
                          (fp.abs ((_ to_fp 11 53) a_ack!1009))))))
  (not a!1)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!1009))
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) b_ack!1008))
                          ((_ to_fp 11 53) #x3fe62e42fefa39ef))
                  ((_ to_fp 11 53) #x3fb999999999999a))))
  (not a!1)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1008) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1009) ((_ to_fp 11 53) #xbfe0000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!1009))
                           ((_ to_fp 11 53) b_ack!1008))
                   ((_ to_fp 11 53) b_ack!1008))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 ((_ to_fp 11 53) a_ack!1009)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!1009))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!1009))
                           ((_ to_fp 11 53) b_ack!1008)))))
  (fp.eq a!1 ((_ to_fp 11 53) b_ack!1008))))
(assert (let ((a!1 (fp.lt (fp.sub roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53) a_ack!1009))
                          ((_ to_fp 11 53) b_ack!1008))
                  ((_ to_fp 11 53) #x4024000000000000))))
  (not a!1)))

(check-sat)
(exit)
