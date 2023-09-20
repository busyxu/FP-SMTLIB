(declare-fun x1_ack!267 () (_ BitVec 64))
(declare-fun x0_ack!271 () (_ BitVec 64))
(declare-fun y0_ack!268 () (_ BitVec 64))
(declare-fun x_ack!269 () (_ BitVec 64))
(declare-fun y_ack!270 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!271) ((_ to_fp 11 53) x1_ack!267))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!268) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!269) ((_ to_fp 11 53) x0_ack!271))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!269) ((_ to_fp 11 53) x1_ack!267))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!270) ((_ to_fp 11 53) y0_ack!268))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!270) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!267)
                       ((_ to_fp 11 53) x0_ack!271))
               ((_ to_fp 11 53) x0_ack!271))
       ((_ to_fp 11 53) x1_ack!267)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!267)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!267)
                       ((_ to_fp 11 53) x0_ack!271)))
       ((_ to_fp 11 53) x0_ack!271)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!268))
               ((_ to_fp 11 53) y0_ack!268))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!268)))
       ((_ to_fp 11 53) y0_ack!268)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!270)
                       ((_ to_fp 11 53) y0_ack!268))
               ((_ to_fp 11 53) y0_ack!268))
       ((_ to_fp 11 53) y_ack!270)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!270)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!270)
                       ((_ to_fp 11 53) y0_ack!268)))
       ((_ to_fp 11 53) y0_ack!268)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!269)
                                   ((_ to_fp 11 53) x0_ack!271))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!267)
                                   ((_ to_fp 11 53) x0_ack!271)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!270)
                                   ((_ to_fp 11 53) y0_ack!268))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!268))))))
  (FPCHECK_FMUL_OVERFLOW a!1 a!2)))

(check-sat)
(exit)
