(declare-fun x1_ack!326 () (_ BitVec 64))
(declare-fun x0_ack!331 () (_ BitVec 64))
(declare-fun y0_ack!327 () (_ BitVec 64))
(declare-fun x_ack!329 () (_ BitVec 64))
(declare-fun y_ack!330 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z0_ack!328 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!331) ((_ to_fp 11 53) x1_ack!326))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!327) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!329) ((_ to_fp 11 53) x0_ack!331))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!329) ((_ to_fp 11 53) x1_ack!326))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!330) ((_ to_fp 11 53) y0_ack!327))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!330) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!329) ((_ to_fp 11 53) x0_ack!331))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!329) ((_ to_fp 11 53) x1_ack!326))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!330) ((_ to_fp 11 53) y0_ack!327))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!330) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!326)
                       ((_ to_fp 11 53) x0_ack!331))
               ((_ to_fp 11 53) x0_ack!331))
       ((_ to_fp 11 53) x1_ack!326)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!326)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!326)
                       ((_ to_fp 11 53) x0_ack!331)))
       ((_ to_fp 11 53) x0_ack!331)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!327))
               ((_ to_fp 11 53) y0_ack!327))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!327)))
       ((_ to_fp 11 53) y0_ack!327)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!329)
                                   ((_ to_fp 11 53) x0_ack!331))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!326)
                                   ((_ to_fp 11 53) x0_ack!331)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!330)
                                   ((_ to_fp 11 53) y0_ack!327))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!327))))))
  (FPCHECK_FMUL_ACCURACY (fp.mul roundNearestTiesToEven a!1 a!2) z0_ack!328)))

(check-sat)
(exit)
