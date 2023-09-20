(declare-fun x1_ack!896 () (_ BitVec 64))
(declare-fun x0_ack!900 () (_ BitVec 64))
(declare-fun y0_ack!897 () (_ BitVec 64))
(declare-fun x_ack!898 () (_ BitVec 64))
(declare-fun y_ack!899 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!900) ((_ to_fp 11 53) x1_ack!896))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!897) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!898) ((_ to_fp 11 53) x0_ack!900))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!898) ((_ to_fp 11 53) x1_ack!896))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!899) ((_ to_fp 11 53) y0_ack!897))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!899) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!898) ((_ to_fp 11 53) x0_ack!900))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!898) ((_ to_fp 11 53) x1_ack!896)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!899) ((_ to_fp 11 53) y0_ack!897))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!899) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!896)
                       ((_ to_fp 11 53) x0_ack!900))
               ((_ to_fp 11 53) x0_ack!900))
       ((_ to_fp 11 53) x1_ack!896)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!896)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!896)
                       ((_ to_fp 11 53) x0_ack!900)))
       ((_ to_fp 11 53) x0_ack!900)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!897))
               ((_ to_fp 11 53) y0_ack!897))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!897)))
       ((_ to_fp 11 53) y0_ack!897)))

(check-sat)
(exit)
