(declare-fun x1_ack!3145 () (_ BitVec 64))
(declare-fun x0_ack!3149 () (_ BitVec 64))
(declare-fun y0_ack!3146 () (_ BitVec 64))
(declare-fun x_ack!3147 () (_ BitVec 64))
(declare-fun y_ack!3148 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3149) ((_ to_fp 11 53) x1_ack!3145))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3146) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3147) ((_ to_fp 11 53) x0_ack!3149))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3147) ((_ to_fp 11 53) x1_ack!3145))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3148) ((_ to_fp 11 53) y0_ack!3146))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3148) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3145)
                       ((_ to_fp 11 53) x0_ack!3149))
               ((_ to_fp 11 53) x0_ack!3149))
       ((_ to_fp 11 53) x1_ack!3145)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3145)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3145)
                       ((_ to_fp 11 53) x0_ack!3149)))
       ((_ to_fp 11 53) x0_ack!3149)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3146))
               ((_ to_fp 11 53) y0_ack!3146))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3146)))
       ((_ to_fp 11 53) y0_ack!3146)))

(check-sat)
(exit)
