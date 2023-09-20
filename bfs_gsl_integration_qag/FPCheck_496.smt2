(declare-fun key_ack!5175 () (_ BitVec 32))
(declare-fun limit_ack!5174 () (_ BitVec 64))
(declare-fun epsabs_ack!5173 () (_ BitVec 64))
(declare-fun b_ack!5172 () (_ BitVec 64))
(declare-fun a_ack!5176 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt key_ack!5175 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!5175)))
(assert (= #x00000001 key_ack!5175))
(assert (not (bvult #x00000000000003e8 limit_ack!5174)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5173)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5176)
                                   ((_ to_fp 11 53) b_ack!5172))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5172)
                                   ((_ to_fp 11 53) a_ack!5176)))
                   ((_ to_fp 11 53) #x3fca98b2892e0c77))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!5176)
                    ((_ to_fp 11 53) b_ack!5172)))
    a!1)))

(check-sat)
(exit)
