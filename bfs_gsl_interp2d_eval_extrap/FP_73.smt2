(declare-fun x1_ack!3024 () (_ BitVec 64))
(declare-fun x0_ack!3028 () (_ BitVec 64))
(declare-fun y0_ack!3025 () (_ BitVec 64))
(declare-fun x_ack!3026 () (_ BitVec 64))
(declare-fun y_ack!3027 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3028) ((_ to_fp 11 53) x1_ack!3024))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3025) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3026) ((_ to_fp 11 53) x0_ack!3028))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3026) ((_ to_fp 11 53) x1_ack!3024))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3027) ((_ to_fp 11 53) y0_ack!3025))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3027) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3024)
                       ((_ to_fp 11 53) x0_ack!3028))
               ((_ to_fp 11 53) x0_ack!3028))
       ((_ to_fp 11 53) x1_ack!3024)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3024)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3024)
                       ((_ to_fp 11 53) x0_ack!3028)))
       ((_ to_fp 11 53) x0_ack!3028)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3025))
               ((_ to_fp 11 53) y0_ack!3025))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3025)))
       ((_ to_fp 11 53) y0_ack!3025)))

(check-sat)
(exit)
