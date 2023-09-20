(declare-fun x1_ack!3195 () (_ BitVec 64))
(declare-fun x0_ack!3199 () (_ BitVec 64))
(declare-fun y0_ack!3196 () (_ BitVec 64))
(declare-fun x_ack!3197 () (_ BitVec 64))
(declare-fun y_ack!3198 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3199) ((_ to_fp 11 53) x1_ack!3195))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3196) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3197) ((_ to_fp 11 53) x0_ack!3199))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3197) ((_ to_fp 11 53) x1_ack!3195))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3198) ((_ to_fp 11 53) y0_ack!3196))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3198) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3195)
                       ((_ to_fp 11 53) x0_ack!3199))
               ((_ to_fp 11 53) x0_ack!3199))
       ((_ to_fp 11 53) x1_ack!3195)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3195)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3195)
                       ((_ to_fp 11 53) x0_ack!3199)))
       ((_ to_fp 11 53) x0_ack!3199)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3196))
               ((_ to_fp 11 53) y0_ack!3196))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3196)))
       ((_ to_fp 11 53) y0_ack!3196)))

(check-sat)
(exit)
