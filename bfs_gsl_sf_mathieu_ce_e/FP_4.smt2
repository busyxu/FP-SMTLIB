(declare-fun n_ack!150 () (_ BitVec 32))
(declare-fun a_ack!151 () (_ BitVec 64))
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun z_ack!149 () (_ BitVec 64))
(assert (= #x00000000 (bvsrem n_ack!150 #x00000002)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!151) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 n_ack!150))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_cos (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     n_ack!150)
                                   ((_ to_fp 11 53) z_ack!149)))
                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd))))
  (fp.gt (fp.abs a!1) ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
