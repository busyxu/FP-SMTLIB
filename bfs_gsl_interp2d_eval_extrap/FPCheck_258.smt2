(declare-fun x1_ack!2661 () (_ BitVec 64))
(declare-fun x0_ack!2665 () (_ BitVec 64))
(declare-fun y0_ack!2662 () (_ BitVec 64))
(declare-fun x_ack!2663 () (_ BitVec 64))
(declare-fun y_ack!2664 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2665) ((_ to_fp 11 53) x1_ack!2661))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2662) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2663) ((_ to_fp 11 53) x0_ack!2665))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2663) ((_ to_fp 11 53) x1_ack!2661))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2664) ((_ to_fp 11 53) y0_ack!2662))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2664) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2661)
                       ((_ to_fp 11 53) x0_ack!2665))
               ((_ to_fp 11 53) x0_ack!2665))
       ((_ to_fp 11 53) x1_ack!2661)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2661)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2661)
                       ((_ to_fp 11 53) x0_ack!2665)))
       ((_ to_fp 11 53) x0_ack!2665)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2662))
               ((_ to_fp 11 53) y0_ack!2662))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2662)))
       ((_ to_fp 11 53) y0_ack!2662)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!2663)
                  ((_ to_fp 11 53) x0_ack!2665))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2661)
                  ((_ to_fp 11 53) x0_ack!2665)))))

(check-sat)
(exit)
