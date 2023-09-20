(declare-fun x_ack!1546 () (_ BitVec 64))
(declare-fun nu_ack!1545 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!1546) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1546)
                    ((_ to_fp 11 53) #x4000000000000000))
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!1545)
                    ((_ to_fp 11 53) #x4000000000000000)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!1545)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1546)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1546)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!1545)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1546)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!1545)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (not a!1)))
(assert (not (fp.geq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) nu_ack!1545)
                     ((_ to_fp 11 53) #x4000000000000000))
             ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!1545)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) nu_ack!1545)
                     ((_ to_fp 11 53) #x4000000000000000))
             (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!1546)
                     ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.gt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) x_ack!1546)
                          ((_ to_fp 11 53) #x4000000000000000))
                  (fp.sub roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu_ack!1545)
                                  ((_ to_fp 11 53) #x4000000000000000))
                          ((_ to_fp 11 53) #x7ff8000000000001)))))
  (not a!1)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!1545)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) x_ack!1546)
                          ((_ to_fp 11 53) #x4000000000000000))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe0000000000000)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu_ack!1545)
                                  ((_ to_fp 11 53) #x4000000000000000))))))
  (not a!1)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!1546)
                  ((_ to_fp 11 53) #x4000000000000000))
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) nu_ack!1545)
                  ((_ to_fp 11 53) #x4000000000000000)))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) nu_ack!1545)
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
