(declare-fun x_ack!113 () (_ BitVec 64))
(declare-fun mu_ack!112 () (_ BitVec 64))
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!113) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!113) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) mu_ack!112) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) mu_ack!112) ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!113) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x0000000000000000)
               ((_ to_fp 11 53) x_ack!113))
       (CF_pow #x3fa999999999999a
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) mu_ack!112)
                       ((_ to_fp 11 53) #x4000000000000000)))))

(check-sat)
(exit)
