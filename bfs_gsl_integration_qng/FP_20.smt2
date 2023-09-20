(declare-fun a_ack!715 () (_ BitVec 64))
(declare-fun b_ack!713 () (_ BitVec 64))
(declare-fun epsabs_ack!714 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!713)
                                   ((_ to_fp 11 53) a_ack!715))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!714)
             ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
