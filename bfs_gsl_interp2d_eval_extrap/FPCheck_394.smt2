(declare-fun x1_ack!4286 () (_ BitVec 64))
(declare-fun x0_ack!4290 () (_ BitVec 64))
(declare-fun y0_ack!4287 () (_ BitVec 64))
(declare-fun x_ack!4288 () (_ BitVec 64))
(declare-fun y_ack!4289 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4290) ((_ to_fp 11 53) x1_ack!4286))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4287) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4288) ((_ to_fp 11 53) x0_ack!4290)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4289) ((_ to_fp 11 53) y0_ack!4287))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!4289) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4286)
                       ((_ to_fp 11 53) x0_ack!4290))
               ((_ to_fp 11 53) x0_ack!4290))
       ((_ to_fp 11 53) x1_ack!4286)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4286)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4286)
                       ((_ to_fp 11 53) x0_ack!4290)))
       ((_ to_fp 11 53) x0_ack!4290)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4287))
               ((_ to_fp 11 53) y0_ack!4287))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4287)))
       ((_ to_fp 11 53) y0_ack!4287)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4288)
                       ((_ to_fp 11 53) x0_ack!4290))
               ((_ to_fp 11 53) x0_ack!4290))
       ((_ to_fp 11 53) x_ack!4288)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!4288)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4288)
                       ((_ to_fp 11 53) x0_ack!4290)))
       ((_ to_fp 11 53) x0_ack!4290)))
(assert (FPCHECK_FSUB_UNDERFLOW y_ack!4289 y0_ack!4287))

(check-sat)
(exit)
