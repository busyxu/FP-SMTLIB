(declare-fun x1_ack!3577 () (_ BitVec 64))
(declare-fun x0_ack!3581 () (_ BitVec 64))
(declare-fun y0_ack!3578 () (_ BitVec 64))
(declare-fun x_ack!3579 () (_ BitVec 64))
(declare-fun y_ack!3580 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3581) ((_ to_fp 11 53) x1_ack!3577))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3578) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3579) ((_ to_fp 11 53) x0_ack!3581)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!3580) ((_ to_fp 11 53) y0_ack!3578)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3577)
                       ((_ to_fp 11 53) x0_ack!3581))
               ((_ to_fp 11 53) x0_ack!3581))
       ((_ to_fp 11 53) x1_ack!3577)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3577)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3577)
                       ((_ to_fp 11 53) x0_ack!3581)))
       ((_ to_fp 11 53) x0_ack!3581)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3580)
                       ((_ to_fp 11 53) y0_ack!3578))
               ((_ to_fp 11 53) y0_ack!3578))
       ((_ to_fp 11 53) y_ack!3580)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3580)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3580)
                       ((_ to_fp 11 53) y0_ack!3578)))
       ((_ to_fp 11 53) y0_ack!3578)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!3580)
          ((_ to_fp 11 53) y0_ack!3578))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!3578))))

(check-sat)
(exit)
