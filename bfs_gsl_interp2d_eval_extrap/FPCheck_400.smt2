(declare-fun x1_ack!4341 () (_ BitVec 64))
(declare-fun x0_ack!4345 () (_ BitVec 64))
(declare-fun y0_ack!4342 () (_ BitVec 64))
(declare-fun x_ack!4343 () (_ BitVec 64))
(declare-fun y_ack!4344 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4345) ((_ to_fp 11 53) x1_ack!4341))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4342) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4343) ((_ to_fp 11 53) x0_ack!4345)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4344) ((_ to_fp 11 53) y0_ack!4342))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!4344) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4341)
                       ((_ to_fp 11 53) x0_ack!4345))
               ((_ to_fp 11 53) x0_ack!4345))
       ((_ to_fp 11 53) x1_ack!4341)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4341)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4341)
                       ((_ to_fp 11 53) x0_ack!4345)))
       ((_ to_fp 11 53) x0_ack!4345)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4342))
               ((_ to_fp 11 53) y0_ack!4342))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4342)))
       ((_ to_fp 11 53) y0_ack!4342)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4343)
                       ((_ to_fp 11 53) x0_ack!4345))
               ((_ to_fp 11 53) x0_ack!4345))
       ((_ to_fp 11 53) x_ack!4343)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!4343)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4343)
                       ((_ to_fp 11 53) x0_ack!4345)))
       ((_ to_fp 11 53) x0_ack!4345)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!4344)
          ((_ to_fp 11 53) y0_ack!4342))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!4342))))

(check-sat)
(exit)
