(declare-fun x_hi_ack!64 () (_ BitVec 64))
(declare-fun x_lo_ack!65 () (_ BitVec 64))
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!65) ((_ to_fp 11 53) x_hi_ack!64))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!65)
                       ((_ to_fp 11 53) x_hi_ack!64))
               ((_ to_fp 11 53) x_lo_ack!65))
       ((_ to_fp 11 53) x_hi_ack!64)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!65)
                       ((_ to_fp 11 53) x_hi_ack!64))
               ((_ to_fp 11 53) x_hi_ack!64))
       ((_ to_fp 11 53) x_lo_ack!65)))

(check-sat)
(exit)
