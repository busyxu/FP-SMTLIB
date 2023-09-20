(declare-fun x1_ack!524 () (_ BitVec 64))
(declare-fun x0_ack!528 () (_ BitVec 64))
(declare-fun y0_ack!525 () (_ BitVec 64))
(declare-fun x_ack!526 () (_ BitVec 64))
(declare-fun y_ack!527 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!528) ((_ to_fp 11 53) x1_ack!524))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!525) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!526) ((_ to_fp 11 53) x0_ack!528))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!526) ((_ to_fp 11 53) x1_ack!524))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!527) ((_ to_fp 11 53) y0_ack!525))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!527) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!524)
                       ((_ to_fp 11 53) x0_ack!528))
               ((_ to_fp 11 53) x0_ack!528))
       ((_ to_fp 11 53) x1_ack!524)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!524)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!524)
                       ((_ to_fp 11 53) x0_ack!528)))
       ((_ to_fp 11 53) x0_ack!528)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!525))
               ((_ to_fp 11 53) y0_ack!525))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!525)))
       ((_ to_fp 11 53) y0_ack!525)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!527)
                       ((_ to_fp 11 53) y0_ack!525))
               ((_ to_fp 11 53) y0_ack!525))
       ((_ to_fp 11 53) y_ack!527)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!527)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!527)
                       ((_ to_fp 11 53) y0_ack!525)))
       ((_ to_fp 11 53) y0_ack!525)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!526)
                                   ((_ to_fp 11 53) x0_ack!528))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!524)
                                   ((_ to_fp 11 53) x0_ack!528))))))
  (FPCHECK_FMUL_ACCURACY
    a!1
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y_ack!527)
                    ((_ to_fp 11 53) y0_ack!525))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) y0_ack!525))))))

(check-sat)
(exit)
