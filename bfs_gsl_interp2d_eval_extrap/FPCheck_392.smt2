(declare-fun x1_ack!4261 () (_ BitVec 64))
(declare-fun x0_ack!4265 () (_ BitVec 64))
(declare-fun y0_ack!4262 () (_ BitVec 64))
(declare-fun x_ack!4263 () (_ BitVec 64))
(declare-fun y_ack!4264 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4265) ((_ to_fp 11 53) x1_ack!4261))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4262) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4263) ((_ to_fp 11 53) x0_ack!4265)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4264) ((_ to_fp 11 53) y0_ack!4262))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!4264) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4261)
                       ((_ to_fp 11 53) x0_ack!4265))
               ((_ to_fp 11 53) x0_ack!4265))
       ((_ to_fp 11 53) x1_ack!4261)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4261)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4261)
                       ((_ to_fp 11 53) x0_ack!4265)))
       ((_ to_fp 11 53) x0_ack!4265)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4262))
               ((_ to_fp 11 53) y0_ack!4262))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4262)))
       ((_ to_fp 11 53) y0_ack!4262)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4263)
                       ((_ to_fp 11 53) x0_ack!4265))
               ((_ to_fp 11 53) x0_ack!4265))
       ((_ to_fp 11 53) x_ack!4263)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!4263)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4263)
                       ((_ to_fp 11 53) x0_ack!4265)))
       ((_ to_fp 11 53) x0_ack!4265)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!4263)
          ((_ to_fp 11 53) x0_ack!4265))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!4261)
          ((_ to_fp 11 53) x0_ack!4265))))

(check-sat)
(exit)
