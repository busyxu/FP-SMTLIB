(declare-fun b_ack!1405 () (_ BitVec 64))
(declare-fun a_ack!1406 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1405) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1406) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1405) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!1405))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1405)
                       ((_ to_fp 11 53) b_ack!1405))
               ((_ to_fp 11 53) b_ack!1405))
       ((_ to_fp 11 53) b_ack!1405)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!1405))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1405)
                       ((_ to_fp 11 53) b_ack!1405))
               ((_ to_fp 11 53) b_ack!1405))
       ((_ to_fp 11 53) b_ack!1405)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) b_ack!1405)
                          ((_ to_fp 11 53) b_ack!1405))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x4024000000000000)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!1406)
                                  ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not a!1)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1406) ((_ to_fp 11 53) #x4049000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1405) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1406) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1405)
                                   ((_ to_fp 11 53) a_ack!1406))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1405)
               ((_ to_fp 11 53) a_ack!1406))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!1405)
          ((_ to_fp 11 53) a_ack!1406))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!1405)
          ((_ to_fp 11 53) a_ack!1406))))

(check-sat)
(exit)
