(declare-fun x1_ack!2491 () (_ BitVec 64))
(declare-fun x0_ack!2495 () (_ BitVec 64))
(declare-fun y0_ack!2492 () (_ BitVec 64))
(declare-fun x_ack!2493 () (_ BitVec 64))
(declare-fun y_ack!2494 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2495) ((_ to_fp 11 53) x1_ack!2491))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2492) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2493) ((_ to_fp 11 53) x0_ack!2495))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2493) ((_ to_fp 11 53) x1_ack!2491))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!2494) ((_ to_fp 11 53) y0_ack!2492)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2491)
                       ((_ to_fp 11 53) x0_ack!2495))
               ((_ to_fp 11 53) x0_ack!2495))
       ((_ to_fp 11 53) x1_ack!2491)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2491)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2491)
                       ((_ to_fp 11 53) x0_ack!2495)))
       ((_ to_fp 11 53) x0_ack!2495)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2492))
               ((_ to_fp 11 53) y0_ack!2492))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2492)))
       ((_ to_fp 11 53) y0_ack!2492)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!2494)
                  ((_ to_fp 11 53) y0_ack!2492))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!2492)))))

(check-sat)
(exit)
