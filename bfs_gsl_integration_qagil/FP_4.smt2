(declare-fun limit_ack!62 () (_ BitVec 64))
(declare-fun epsabs_ack!61 () (_ BitVec 64))
(declare-fun b_ack!63 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!62)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!61)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!63)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))

(check-sat)
(exit)
