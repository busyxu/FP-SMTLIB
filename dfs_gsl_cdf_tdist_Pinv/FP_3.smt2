(declare-fun x_ack!36 () (_ BitVec 64))
(declare-fun mu_ack!35 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!36) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!36) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) mu_ack!35) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) mu_ack!35) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!36) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) x_ack!36))
               ((_ to_fp 11 53) x_ack!36))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) x_ack!36)))
       ((_ to_fp 11 53) x_ack!36)))

(check-sat)
(exit)
