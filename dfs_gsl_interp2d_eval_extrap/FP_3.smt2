(declare-fun x1_ack!82 () (_ BitVec 64))
(declare-fun x0_ack!86 () (_ BitVec 64))
(declare-fun y0_ack!83 () (_ BitVec 64))
(declare-fun x_ack!84 () (_ BitVec 64))
(declare-fun y_ack!85 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!86) ((_ to_fp 11 53) x1_ack!82))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!83) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!84) ((_ to_fp 11 53) x0_ack!86))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!84) ((_ to_fp 11 53) x1_ack!82))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!85) ((_ to_fp 11 53) y0_ack!83))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!85) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!82)
                       ((_ to_fp 11 53) x0_ack!86))
               ((_ to_fp 11 53) x0_ack!86))
       ((_ to_fp 11 53) x1_ack!82)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!82)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!82)
                       ((_ to_fp 11 53) x0_ack!86)))
       ((_ to_fp 11 53) x0_ack!86)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!83))
               ((_ to_fp 11 53) y0_ack!83))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!83)))
       ((_ to_fp 11 53) y0_ack!83)))

(check-sat)
(exit)
