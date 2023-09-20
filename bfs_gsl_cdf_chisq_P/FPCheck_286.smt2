(declare-fun x_ack!882 () (_ BitVec 64))
(declare-fun nu_ack!881 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!882) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!882)
                    ((_ to_fp 11 53) #x4000000000000000))
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!881)
                    ((_ to_fp 11 53) #x4000000000000000)))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) nu_ack!881)
                     ((_ to_fp 11 53) #x4000000000000000))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!882)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!882)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!882)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x4034000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) x_ack!882)
                          ((_ to_fp 11 53) #x4000000000000000))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe0000000000000)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu_ack!881)
                                  ((_ to_fp 11 53) #x4000000000000000))))))
  (not a!1)))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!881)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x412e848000000000))))
(assert (fp.leq (fp.div roundNearestTiesToEven
                ((_ to_fp 11 53) nu_ack!881)
                ((_ to_fp 11 53) #x4000000000000000))
        (fp.div roundNearestTiesToEven
                ((_ to_fp 11 53) x_ack!882)
                ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu_ack!881)
               ((_ to_fp 11 53) #x4000000000000000))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fc999999999999a)
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!882)
                       ((_ to_fp 11 53) #x4000000000000000)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!881)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) x_ack!882)
                          ((_ to_fp 11 53) #x4000000000000000))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe0000000000000)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu_ack!881)
                                  ((_ to_fp 11 53) #x4000000000000000))))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!882)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!881)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!881)
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #xbff0000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!882)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!881)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!881)
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f48406003b2ae5a))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) nu_ack!881)
                     ((_ to_fp 11 53) #x4000000000000000))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!881)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!881)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!881)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!881)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x40c0000000000000))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu_ack!881)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x4330000000000000)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu_ack!881)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
