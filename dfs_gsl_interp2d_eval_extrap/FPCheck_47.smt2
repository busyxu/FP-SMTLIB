(declare-fun x1_ack!489 () (_ BitVec 64))
(declare-fun x0_ack!493 () (_ BitVec 64))
(declare-fun y0_ack!490 () (_ BitVec 64))
(declare-fun x_ack!491 () (_ BitVec 64))
(declare-fun y_ack!492 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!493) ((_ to_fp 11 53) x1_ack!489))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!490) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!491) ((_ to_fp 11 53) x0_ack!493))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!491) ((_ to_fp 11 53) x1_ack!489))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!492) ((_ to_fp 11 53) y0_ack!490))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!492) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!489)
                       ((_ to_fp 11 53) x0_ack!493))
               ((_ to_fp 11 53) x0_ack!493))
       ((_ to_fp 11 53) x1_ack!489)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!489)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!489)
                       ((_ to_fp 11 53) x0_ack!493)))
       ((_ to_fp 11 53) x0_ack!493)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!490))
               ((_ to_fp 11 53) y0_ack!490))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!490)))
       ((_ to_fp 11 53) y0_ack!490)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!492)
                       ((_ to_fp 11 53) y0_ack!490))
               ((_ to_fp 11 53) y0_ack!490))
       ((_ to_fp 11 53) y_ack!492)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!492)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!492)
                       ((_ to_fp 11 53) y0_ack!490)))
       ((_ to_fp 11 53) y0_ack!490)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!491)
                  ((_ to_fp 11 53) x0_ack!493))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!489)
                  ((_ to_fp 11 53) x0_ack!493)))))

(check-sat)
(exit)
