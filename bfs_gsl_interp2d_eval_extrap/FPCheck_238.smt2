(declare-fun x1_ack!2476 () (_ BitVec 64))
(declare-fun x0_ack!2480 () (_ BitVec 64))
(declare-fun y0_ack!2477 () (_ BitVec 64))
(declare-fun x_ack!2478 () (_ BitVec 64))
(declare-fun y_ack!2479 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2480) ((_ to_fp 11 53) x1_ack!2476))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2477) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2478) ((_ to_fp 11 53) x0_ack!2480))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2478) ((_ to_fp 11 53) x1_ack!2476))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!2479) ((_ to_fp 11 53) y0_ack!2477)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2476)
                       ((_ to_fp 11 53) x0_ack!2480))
               ((_ to_fp 11 53) x0_ack!2480))
       ((_ to_fp 11 53) x1_ack!2476)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2476)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2476)
                       ((_ to_fp 11 53) x0_ack!2480)))
       ((_ to_fp 11 53) x0_ack!2480)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2477))
               ((_ to_fp 11 53) y0_ack!2477))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2477)))
       ((_ to_fp 11 53) y0_ack!2477)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!2478)
                  ((_ to_fp 11 53) x0_ack!2480))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2476)
                  ((_ to_fp 11 53) x0_ack!2480)))))

(check-sat)
(exit)
