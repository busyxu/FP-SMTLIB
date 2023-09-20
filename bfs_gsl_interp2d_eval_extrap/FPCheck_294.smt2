(declare-fun x1_ack!3074 () (_ BitVec 64))
(declare-fun x0_ack!3078 () (_ BitVec 64))
(declare-fun y0_ack!3075 () (_ BitVec 64))
(declare-fun x_ack!3076 () (_ BitVec 64))
(declare-fun y_ack!3077 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3078) ((_ to_fp 11 53) x1_ack!3074))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3075) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3076) ((_ to_fp 11 53) x0_ack!3078))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3076) ((_ to_fp 11 53) x1_ack!3074))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3077) ((_ to_fp 11 53) y0_ack!3075))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3077) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3074)
                       ((_ to_fp 11 53) x0_ack!3078))
               ((_ to_fp 11 53) x0_ack!3078))
       ((_ to_fp 11 53) x1_ack!3074)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3074)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3074)
                       ((_ to_fp 11 53) x0_ack!3078)))
       ((_ to_fp 11 53) x0_ack!3078)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3075))
               ((_ to_fp 11 53) y0_ack!3075))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3075)))
       ((_ to_fp 11 53) y0_ack!3075)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!3076)
                  ((_ to_fp 11 53) x0_ack!3078))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!3074)
                  ((_ to_fp 11 53) x0_ack!3078)))
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!3077)
                  ((_ to_fp 11 53) y0_ack!3075))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!3075)))))

(check-sat)
(exit)
