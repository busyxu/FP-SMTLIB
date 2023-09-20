(declare-fun mu_ack!100 () (_ BitVec 64))
(declare-fun x_ack!101 () (_ BitVec 64))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!101)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) mu_ack!100)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.geq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!101)
                     ((_ to_fp 11 53) mu_ack!100))
             ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
