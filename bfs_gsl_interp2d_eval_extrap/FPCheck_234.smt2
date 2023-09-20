(declare-fun x1_ack!2441 () (_ BitVec 64))
(declare-fun x0_ack!2445 () (_ BitVec 64))
(declare-fun y0_ack!2442 () (_ BitVec 64))
(declare-fun x_ack!2443 () (_ BitVec 64))
(declare-fun y_ack!2444 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2445) ((_ to_fp 11 53) x1_ack!2441))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2442) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2443) ((_ to_fp 11 53) x0_ack!2445))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2443) ((_ to_fp 11 53) x1_ack!2441))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!2444) ((_ to_fp 11 53) y0_ack!2442)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2441)
                       ((_ to_fp 11 53) x0_ack!2445))
               ((_ to_fp 11 53) x0_ack!2445))
       ((_ to_fp 11 53) x1_ack!2441)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2441)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2441)
                       ((_ to_fp 11 53) x0_ack!2445)))
       ((_ to_fp 11 53) x0_ack!2445)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2442))
               ((_ to_fp 11 53) y0_ack!2442))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2442)))
       ((_ to_fp 11 53) y0_ack!2442)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!2444)
          ((_ to_fp 11 53) y0_ack!2442))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!2442))))

(check-sat)
(exit)
