(declare-fun a_ack!34 () (_ BitVec 64))
(declare-fun x_ack!35 () (_ BitVec 64))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!35)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) a_ack!34)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!35)
                    ((_ to_fp 11 53) a_ack!34))
            ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
