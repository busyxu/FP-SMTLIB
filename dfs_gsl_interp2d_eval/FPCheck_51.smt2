(declare-fun x1_ack!529 () (_ BitVec 64))
(declare-fun x0_ack!533 () (_ BitVec 64))
(declare-fun y0_ack!530 () (_ BitVec 64))
(declare-fun x_ack!531 () (_ BitVec 64))
(declare-fun y_ack!532 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!533) ((_ to_fp 11 53) x1_ack!529))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!530) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!531) ((_ to_fp 11 53) x0_ack!533))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!531) ((_ to_fp 11 53) x1_ack!529))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!532) ((_ to_fp 11 53) y0_ack!530))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!532) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!531) ((_ to_fp 11 53) x0_ack!533))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!531) ((_ to_fp 11 53) x1_ack!529))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!532) ((_ to_fp 11 53) y0_ack!530))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!532) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!529)
                       ((_ to_fp 11 53) x0_ack!533))
               ((_ to_fp 11 53) x0_ack!533))
       ((_ to_fp 11 53) x1_ack!529)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!529)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!529)
                       ((_ to_fp 11 53) x0_ack!533)))
       ((_ to_fp 11 53) x0_ack!533)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!530))
               ((_ to_fp 11 53) y0_ack!530))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!530)))
       ((_ to_fp 11 53) y0_ack!530)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!531)
                                   ((_ to_fp 11 53) x0_ack!533))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!529)
                                   ((_ to_fp 11 53) x0_ack!533))))))
  (FPCHECK_FMUL_ACCURACY
    a!1
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y_ack!532)
                    ((_ to_fp 11 53) y0_ack!530))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) y0_ack!530))))))

(check-sat)
(exit)
