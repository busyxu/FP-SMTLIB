(declare-fun n_ack!83 () (_ BitVec 32))
(declare-fun a_ack!84 () (_ BitVec 64))
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun z_ack!82 () (_ BitVec 64))
(assert (= #x00000000 (bvsrem n_ack!83 #x00000002)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!84) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (= #x00000000 n_ack!83)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_cos (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     n_ack!83)
                                   ((_ to_fp 11 53) z_ack!82)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.gt (fp.abs a!1) ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
