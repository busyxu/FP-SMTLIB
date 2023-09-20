(declare-fun x1_ack!2551 () (_ BitVec 64))
(declare-fun x0_ack!2555 () (_ BitVec 64))
(declare-fun y0_ack!2552 () (_ BitVec 64))
(declare-fun x_ack!2553 () (_ BitVec 64))
(declare-fun y_ack!2554 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2555) ((_ to_fp 11 53) x1_ack!2551))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2552) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2553) ((_ to_fp 11 53) x0_ack!2555))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2553) ((_ to_fp 11 53) x1_ack!2551))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2554) ((_ to_fp 11 53) y0_ack!2552))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2554) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2551)
                       ((_ to_fp 11 53) x0_ack!2555))
               ((_ to_fp 11 53) x0_ack!2555))
       ((_ to_fp 11 53) x1_ack!2551)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2551)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2551)
                       ((_ to_fp 11 53) x0_ack!2555)))
       ((_ to_fp 11 53) x0_ack!2555)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2552))
               ((_ to_fp 11 53) y0_ack!2552))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2552)))
       ((_ to_fp 11 53) y0_ack!2552)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!2553)
          ((_ to_fp 11 53) x0_ack!2555))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!2551)
          ((_ to_fp 11 53) x0_ack!2555))))

(check-sat)
(exit)
