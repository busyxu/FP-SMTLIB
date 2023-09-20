(declare-fun x1_ack!3069 () (_ BitVec 64))
(declare-fun x0_ack!3073 () (_ BitVec 64))
(declare-fun y0_ack!3070 () (_ BitVec 64))
(declare-fun x_ack!3071 () (_ BitVec 64))
(declare-fun y_ack!3072 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3073) ((_ to_fp 11 53) x1_ack!3069))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3070) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3071) ((_ to_fp 11 53) x0_ack!3073))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3071) ((_ to_fp 11 53) x1_ack!3069))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3072) ((_ to_fp 11 53) y0_ack!3070))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3072) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3069)
                       ((_ to_fp 11 53) x0_ack!3073))
               ((_ to_fp 11 53) x0_ack!3073))
       ((_ to_fp 11 53) x1_ack!3069)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3069)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3069)
                       ((_ to_fp 11 53) x0_ack!3073)))
       ((_ to_fp 11 53) x0_ack!3073)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3070))
               ((_ to_fp 11 53) y0_ack!3070))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3070)))
       ((_ to_fp 11 53) y0_ack!3070)))

(check-sat)
(exit)
