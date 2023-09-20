(declare-fun x1_ack!4316 () (_ BitVec 64))
(declare-fun x0_ack!4320 () (_ BitVec 64))
(declare-fun y0_ack!4317 () (_ BitVec 64))
(declare-fun x_ack!4318 () (_ BitVec 64))
(declare-fun y_ack!4319 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4320) ((_ to_fp 11 53) x1_ack!4316))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4317) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4318) ((_ to_fp 11 53) x0_ack!4320)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4319) ((_ to_fp 11 53) y0_ack!4317))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!4319) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4316)
                       ((_ to_fp 11 53) x0_ack!4320))
               ((_ to_fp 11 53) x0_ack!4320))
       ((_ to_fp 11 53) x1_ack!4316)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4316)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4316)
                       ((_ to_fp 11 53) x0_ack!4320)))
       ((_ to_fp 11 53) x0_ack!4320)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4317))
               ((_ to_fp 11 53) y0_ack!4317))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4317)))
       ((_ to_fp 11 53) y0_ack!4317)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4318)
                       ((_ to_fp 11 53) x0_ack!4320))
               ((_ to_fp 11 53) x0_ack!4320))
       ((_ to_fp 11 53) x_ack!4318)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!4318)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4318)
                       ((_ to_fp 11 53) x0_ack!4320)))
       ((_ to_fp 11 53) x0_ack!4320)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!4319)
          ((_ to_fp 11 53) y0_ack!4317))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!4317))))

(check-sat)
(exit)
