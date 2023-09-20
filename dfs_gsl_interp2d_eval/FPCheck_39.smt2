(declare-fun x1_ack!388 () (_ BitVec 64))
(declare-fun x0_ack!392 () (_ BitVec 64))
(declare-fun y0_ack!389 () (_ BitVec 64))
(declare-fun x_ack!390 () (_ BitVec 64))
(declare-fun y_ack!391 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!392) ((_ to_fp 11 53) x1_ack!388))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!389) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!390) ((_ to_fp 11 53) x0_ack!392))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!390) ((_ to_fp 11 53) x1_ack!388))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!391) ((_ to_fp 11 53) y0_ack!389))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!391) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!390) ((_ to_fp 11 53) x0_ack!392))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!390) ((_ to_fp 11 53) x1_ack!388))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!391) ((_ to_fp 11 53) y0_ack!389))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!391) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!388)
                       ((_ to_fp 11 53) x0_ack!392))
               ((_ to_fp 11 53) x0_ack!392))
       ((_ to_fp 11 53) x1_ack!388)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!388)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!388)
                       ((_ to_fp 11 53) x0_ack!392)))
       ((_ to_fp 11 53) x0_ack!392)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!389))
               ((_ to_fp 11 53) y0_ack!389))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!389)))
       ((_ to_fp 11 53) y0_ack!389)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!391)
                                   ((_ to_fp 11 53) y0_ack!389))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!389))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!390)
                    ((_ to_fp 11 53) x0_ack!392))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!388)
                    ((_ to_fp 11 53) x0_ack!392)))
    a!1)))

(check-sat)
(exit)
