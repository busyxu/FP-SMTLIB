(declare-fun x1_ack!4371 () (_ BitVec 64))
(declare-fun x0_ack!4375 () (_ BitVec 64))
(declare-fun y0_ack!4372 () (_ BitVec 64))
(declare-fun x_ack!4373 () (_ BitVec 64))
(declare-fun y_ack!4374 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4375) ((_ to_fp 11 53) x1_ack!4371))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4372) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4373) ((_ to_fp 11 53) x0_ack!4375)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4374) ((_ to_fp 11 53) y0_ack!4372))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!4374) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4371)
                       ((_ to_fp 11 53) x0_ack!4375))
               ((_ to_fp 11 53) x0_ack!4375))
       ((_ to_fp 11 53) x1_ack!4371)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4371)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4371)
                       ((_ to_fp 11 53) x0_ack!4375)))
       ((_ to_fp 11 53) x0_ack!4375)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4372))
               ((_ to_fp 11 53) y0_ack!4372))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4372)))
       ((_ to_fp 11 53) y0_ack!4372)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4373)
                       ((_ to_fp 11 53) x0_ack!4375))
               ((_ to_fp 11 53) x0_ack!4375))
       ((_ to_fp 11 53) x_ack!4373)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!4373)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4373)
                       ((_ to_fp 11 53) x0_ack!4375)))
       ((_ to_fp 11 53) x0_ack!4375)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!4373)
                  ((_ to_fp 11 53) x0_ack!4375))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!4371)
                  ((_ to_fp 11 53) x0_ack!4375)))))

(check-sat)
(exit)
