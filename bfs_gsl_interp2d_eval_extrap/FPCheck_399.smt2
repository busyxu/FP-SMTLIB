(declare-fun x1_ack!4336 () (_ BitVec 64))
(declare-fun x0_ack!4340 () (_ BitVec 64))
(declare-fun y0_ack!4337 () (_ BitVec 64))
(declare-fun x_ack!4338 () (_ BitVec 64))
(declare-fun y_ack!4339 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4340) ((_ to_fp 11 53) x1_ack!4336))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4337) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4338) ((_ to_fp 11 53) x0_ack!4340)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4339) ((_ to_fp 11 53) y0_ack!4337))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!4339) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4336)
                       ((_ to_fp 11 53) x0_ack!4340))
               ((_ to_fp 11 53) x0_ack!4340))
       ((_ to_fp 11 53) x1_ack!4336)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4336)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4336)
                       ((_ to_fp 11 53) x0_ack!4340)))
       ((_ to_fp 11 53) x0_ack!4340)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4337))
               ((_ to_fp 11 53) y0_ack!4337))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4337)))
       ((_ to_fp 11 53) y0_ack!4337)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4338)
                       ((_ to_fp 11 53) x0_ack!4340))
               ((_ to_fp 11 53) x0_ack!4340))
       ((_ to_fp 11 53) x_ack!4338)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!4338)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4338)
                       ((_ to_fp 11 53) x0_ack!4340)))
       ((_ to_fp 11 53) x0_ack!4340)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!4339)
          ((_ to_fp 11 53) y0_ack!4337))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!4337))))

(check-sat)
(exit)
