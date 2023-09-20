(declare-fun x_hi_ack!74 () (_ BitVec 64))
(declare-fun x_lo_ack!75 () (_ BitVec 64))
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!75) ((_ to_fp 11 53) x_hi_ack!74))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!75)
                       ((_ to_fp 11 53) x_hi_ack!74))
               ((_ to_fp 11 53) x_lo_ack!75))
       ((_ to_fp 11 53) x_hi_ack!74)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!75)
                       ((_ to_fp 11 53) x_hi_ack!74))
               ((_ to_fp 11 53) x_hi_ack!74))
       ((_ to_fp 11 53) x_lo_ack!75)))

(check-sat)
(exit)
