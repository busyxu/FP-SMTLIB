(declare-fun x1_ack!4241 () (_ BitVec 64))
(declare-fun x0_ack!4245 () (_ BitVec 64))
(declare-fun y0_ack!4242 () (_ BitVec 64))
(declare-fun x_ack!4243 () (_ BitVec 64))
(declare-fun y_ack!4244 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4245) ((_ to_fp 11 53) x1_ack!4241))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4242) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4243) ((_ to_fp 11 53) x0_ack!4245)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4244) ((_ to_fp 11 53) y0_ack!4242))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!4244) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4241)
                       ((_ to_fp 11 53) x0_ack!4245))
               ((_ to_fp 11 53) x0_ack!4245))
       ((_ to_fp 11 53) x1_ack!4241)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4241)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4241)
                       ((_ to_fp 11 53) x0_ack!4245)))
       ((_ to_fp 11 53) x0_ack!4245)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4242))
               ((_ to_fp 11 53) y0_ack!4242))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4242)))
       ((_ to_fp 11 53) y0_ack!4242)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4243)
                       ((_ to_fp 11 53) x0_ack!4245))
               ((_ to_fp 11 53) x0_ack!4245))
       ((_ to_fp 11 53) x_ack!4243)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!4243)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4243)
                       ((_ to_fp 11 53) x0_ack!4245)))
       ((_ to_fp 11 53) x0_ack!4245)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!4243)
          ((_ to_fp 11 53) x0_ack!4245))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!4241)
          ((_ to_fp 11 53) x0_ack!4245))))

(check-sat)
(exit)
