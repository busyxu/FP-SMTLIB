(declare-fun b_ack!171 () (_ BitVec 64))
(declare-fun x_ack!172 () (_ BitVec 64))
(declare-fun a_ack!170 () (_ BitVec 64))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!172)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!171)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!172) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!172)
                    ((_ to_fp 11 53) b_ack!171))
            ((_ to_fp 11 53) a_ack!170))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!170) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!172)
                    ((_ to_fp 11 53) b_ack!171))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!172)
               ((_ to_fp 11 53) b_ack!171))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
