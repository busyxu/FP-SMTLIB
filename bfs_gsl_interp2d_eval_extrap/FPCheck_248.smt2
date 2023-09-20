(declare-fun x1_ack!2571 () (_ BitVec 64))
(declare-fun x0_ack!2575 () (_ BitVec 64))
(declare-fun y0_ack!2572 () (_ BitVec 64))
(declare-fun x_ack!2573 () (_ BitVec 64))
(declare-fun y_ack!2574 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2575) ((_ to_fp 11 53) x1_ack!2571))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2572) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2573) ((_ to_fp 11 53) x0_ack!2575))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2573) ((_ to_fp 11 53) x1_ack!2571))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2574) ((_ to_fp 11 53) y0_ack!2572))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2574) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2571)
                       ((_ to_fp 11 53) x0_ack!2575))
               ((_ to_fp 11 53) x0_ack!2575))
       ((_ to_fp 11 53) x1_ack!2571)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2571)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2571)
                       ((_ to_fp 11 53) x0_ack!2575)))
       ((_ to_fp 11 53) x0_ack!2575)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2572))
               ((_ to_fp 11 53) y0_ack!2572))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2572)))
       ((_ to_fp 11 53) y0_ack!2572)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!2573)
          ((_ to_fp 11 53) x0_ack!2575))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!2571)
          ((_ to_fp 11 53) x0_ack!2575))))

(check-sat)
(exit)
