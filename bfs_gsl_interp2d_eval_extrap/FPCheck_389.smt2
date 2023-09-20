(declare-fun x1_ack!4231 () (_ BitVec 64))
(declare-fun x0_ack!4235 () (_ BitVec 64))
(declare-fun y0_ack!4232 () (_ BitVec 64))
(declare-fun x_ack!4233 () (_ BitVec 64))
(declare-fun y_ack!4234 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4235) ((_ to_fp 11 53) x1_ack!4231))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4232) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4233) ((_ to_fp 11 53) x0_ack!4235)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4234) ((_ to_fp 11 53) y0_ack!4232))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!4234) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4231)
                       ((_ to_fp 11 53) x0_ack!4235))
               ((_ to_fp 11 53) x0_ack!4235))
       ((_ to_fp 11 53) x1_ack!4231)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4231)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4231)
                       ((_ to_fp 11 53) x0_ack!4235)))
       ((_ to_fp 11 53) x0_ack!4235)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4232))
               ((_ to_fp 11 53) y0_ack!4232))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4232)))
       ((_ to_fp 11 53) y0_ack!4232)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4233)
                       ((_ to_fp 11 53) x0_ack!4235))
               ((_ to_fp 11 53) x0_ack!4235))
       ((_ to_fp 11 53) x_ack!4233)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!4233)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4233)
                       ((_ to_fp 11 53) x0_ack!4235)))
       ((_ to_fp 11 53) x0_ack!4235)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!4233)
          ((_ to_fp 11 53) x0_ack!4235))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!4231)
          ((_ to_fp 11 53) x0_ack!4235))))

(check-sat)
(exit)
