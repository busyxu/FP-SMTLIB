(declare-fun x1_ack!926 () (_ BitVec 64))
(declare-fun x0_ack!930 () (_ BitVec 64))
(declare-fun y0_ack!927 () (_ BitVec 64))
(declare-fun x_ack!928 () (_ BitVec 64))
(declare-fun y_ack!929 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!930) ((_ to_fp 11 53) x1_ack!926))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!927) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!928) ((_ to_fp 11 53) x0_ack!930))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!928) ((_ to_fp 11 53) x1_ack!926))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!929) ((_ to_fp 11 53) y0_ack!927))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!929) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!928) ((_ to_fp 11 53) x0_ack!930))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!928) ((_ to_fp 11 53) x1_ack!926)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!929) ((_ to_fp 11 53) y0_ack!927))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!929) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!926)
                       ((_ to_fp 11 53) x0_ack!930))
               ((_ to_fp 11 53) x0_ack!930))
       ((_ to_fp 11 53) x1_ack!926)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!926)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!926)
                       ((_ to_fp 11 53) x0_ack!930)))
       ((_ to_fp 11 53) x0_ack!930)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!927))
               ((_ to_fp 11 53) y0_ack!927))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!927)))
       ((_ to_fp 11 53) y0_ack!927)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               ((_ to_fp 11 53) y0_ack!927))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
