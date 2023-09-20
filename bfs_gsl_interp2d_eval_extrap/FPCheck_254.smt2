(declare-fun x1_ack!2626 () (_ BitVec 64))
(declare-fun x0_ack!2630 () (_ BitVec 64))
(declare-fun y0_ack!2627 () (_ BitVec 64))
(declare-fun x_ack!2628 () (_ BitVec 64))
(declare-fun y_ack!2629 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2630) ((_ to_fp 11 53) x1_ack!2626))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2627) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2628) ((_ to_fp 11 53) x0_ack!2630))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2628) ((_ to_fp 11 53) x1_ack!2626))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2629) ((_ to_fp 11 53) y0_ack!2627))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2629) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2626)
                       ((_ to_fp 11 53) x0_ack!2630))
               ((_ to_fp 11 53) x0_ack!2630))
       ((_ to_fp 11 53) x1_ack!2626)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2626)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2626)
                       ((_ to_fp 11 53) x0_ack!2630)))
       ((_ to_fp 11 53) x0_ack!2630)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2627))
               ((_ to_fp 11 53) y0_ack!2627))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2627)))
       ((_ to_fp 11 53) y0_ack!2627)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!2629)
          ((_ to_fp 11 53) y0_ack!2627))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!2627))))

(check-sat)
(exit)
