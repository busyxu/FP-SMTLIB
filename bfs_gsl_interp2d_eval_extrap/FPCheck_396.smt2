(declare-fun x1_ack!4306 () (_ BitVec 64))
(declare-fun x0_ack!4310 () (_ BitVec 64))
(declare-fun y0_ack!4307 () (_ BitVec 64))
(declare-fun x_ack!4308 () (_ BitVec 64))
(declare-fun y_ack!4309 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4310) ((_ to_fp 11 53) x1_ack!4306))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4307) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4308) ((_ to_fp 11 53) x0_ack!4310)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4309) ((_ to_fp 11 53) y0_ack!4307))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!4309) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4306)
                       ((_ to_fp 11 53) x0_ack!4310))
               ((_ to_fp 11 53) x0_ack!4310))
       ((_ to_fp 11 53) x1_ack!4306)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4306)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4306)
                       ((_ to_fp 11 53) x0_ack!4310)))
       ((_ to_fp 11 53) x0_ack!4310)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4307))
               ((_ to_fp 11 53) y0_ack!4307))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4307)))
       ((_ to_fp 11 53) y0_ack!4307)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4308)
                       ((_ to_fp 11 53) x0_ack!4310))
               ((_ to_fp 11 53) x0_ack!4310))
       ((_ to_fp 11 53) x_ack!4308)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!4308)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4308)
                       ((_ to_fp 11 53) x0_ack!4310)))
       ((_ to_fp 11 53) x0_ack!4310)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!4309)
          ((_ to_fp 11 53) y0_ack!4307))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!4307))))

(check-sat)
(exit)
