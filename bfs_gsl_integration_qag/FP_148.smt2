(declare-fun key_ack!5060 () (_ BitVec 32))
(declare-fun limit_ack!5059 () (_ BitVec 64))
(declare-fun epsabs_ack!5058 () (_ BitVec 64))
(declare-fun b_ack!5057 () (_ BitVec 64))
(declare-fun a_ack!5061 () (_ BitVec 64))
(assert (not (bvslt key_ack!5060 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!5060)))
(assert (= #x00000001 key_ack!5060))
(assert (not (bvult #x00000000000003e8 limit_ack!5059)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5058)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5061)
                                   ((_ to_fp 11 53) b_ack!5057))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))

(check-sat)
(exit)
