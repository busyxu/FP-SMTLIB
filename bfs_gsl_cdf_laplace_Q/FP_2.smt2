(declare-fun a_ack!44 () (_ BitVec 64))
(declare-fun x_ack!45 () (_ BitVec 64))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!45)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) a_ack!44)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!45)
                    ((_ to_fp 11 53) a_ack!44))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
