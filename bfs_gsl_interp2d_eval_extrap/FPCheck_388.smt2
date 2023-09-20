(declare-fun x1_ack!4221 () (_ BitVec 64))
(declare-fun x0_ack!4225 () (_ BitVec 64))
(declare-fun y0_ack!4222 () (_ BitVec 64))
(declare-fun x_ack!4223 () (_ BitVec 64))
(declare-fun y_ack!4224 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4225) ((_ to_fp 11 53) x1_ack!4221))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4222) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4223) ((_ to_fp 11 53) x0_ack!4225)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4224) ((_ to_fp 11 53) y0_ack!4222))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!4224) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4221)
                       ((_ to_fp 11 53) x0_ack!4225))
               ((_ to_fp 11 53) x0_ack!4225))
       ((_ to_fp 11 53) x1_ack!4221)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4221)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4221)
                       ((_ to_fp 11 53) x0_ack!4225)))
       ((_ to_fp 11 53) x0_ack!4225)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4222))
               ((_ to_fp 11 53) y0_ack!4222))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4222)))
       ((_ to_fp 11 53) y0_ack!4222)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4223)
                       ((_ to_fp 11 53) x0_ack!4225))
               ((_ to_fp 11 53) x0_ack!4225))
       ((_ to_fp 11 53) x_ack!4223)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!4223)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4223)
                       ((_ to_fp 11 53) x0_ack!4225)))
       ((_ to_fp 11 53) x0_ack!4225)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!4223)
          ((_ to_fp 11 53) x0_ack!4225))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!4221)
          ((_ to_fp 11 53) x0_ack!4225))))

(check-sat)
(exit)
