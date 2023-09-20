(declare-fun epsabs_ack!165 () (_ BitVec 64))
(declare-fun epsrel_ack!166 () (_ BitVec 64))
(declare-fun a_ack!167 () (_ BitVec 64))
(declare-fun b_ack!164 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) epsabs_ack!165)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!166)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!165) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!166)
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!164)
                                   ((_ to_fp 11 53) a_ack!167))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!167)
                                   ((_ to_fp 11 53) b_ack!164))
                           ((_ to_fp 11 53) #x4000000000000000))
                   a!1)))
  (not (fp.leq (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       a!2)
               ((_ to_fp 11 53) #x0000000000000000))))))

(check-sat)
(exit)
