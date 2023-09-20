(declare-fun x1_ack!4301 () (_ BitVec 64))
(declare-fun x0_ack!4305 () (_ BitVec 64))
(declare-fun y0_ack!4302 () (_ BitVec 64))
(declare-fun x_ack!4303 () (_ BitVec 64))
(declare-fun y_ack!4304 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4305) ((_ to_fp 11 53) x1_ack!4301))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4302) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4303) ((_ to_fp 11 53) x0_ack!4305)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4304) ((_ to_fp 11 53) y0_ack!4302))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!4304) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4301)
                       ((_ to_fp 11 53) x0_ack!4305))
               ((_ to_fp 11 53) x0_ack!4305))
       ((_ to_fp 11 53) x1_ack!4301)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4301)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4301)
                       ((_ to_fp 11 53) x0_ack!4305)))
       ((_ to_fp 11 53) x0_ack!4305)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4302))
               ((_ to_fp 11 53) y0_ack!4302))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4302)))
       ((_ to_fp 11 53) y0_ack!4302)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4303)
                       ((_ to_fp 11 53) x0_ack!4305))
               ((_ to_fp 11 53) x0_ack!4305))
       ((_ to_fp 11 53) x_ack!4303)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!4303)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4303)
                       ((_ to_fp 11 53) x0_ack!4305)))
       ((_ to_fp 11 53) x0_ack!4305)))

(check-sat)
(exit)
