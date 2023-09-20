(declare-fun limit_ack!1183 () (_ BitVec 64))
(declare-fun epsabs_ack!1182 () (_ BitVec 64))
(declare-fun b_ack!1181 () (_ BitVec 64))
(declare-fun a_ack!1184 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!1183)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1182)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1184)
                                   ((_ to_fp 11 53) b_ack!1181))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))

(check-sat)
(exit)
