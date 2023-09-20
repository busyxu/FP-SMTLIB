(declare-fun limit_ack!5893 () (_ BitVec 64))
(declare-fun epsabs_ack!5898 () (_ BitVec 64))
(declare-fun a_ack!5899 () (_ BitVec 64))
(declare-fun x1_ack!5894 () (_ BitVec 64))
(declare-fun x2_ack!5895 () (_ BitVec 64))
(declare-fun x3_ack!5896 () (_ BitVec 64))
(declare-fun b_ack!5897 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5893)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5898)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5894) ((_ to_fp 11 53) a_ack!5899))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5895) ((_ to_fp 11 53) x1_ack!5894))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5896) ((_ to_fp 11 53) x2_ack!5895))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5897) ((_ to_fp 11 53) x3_ack!5896))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5899)
                                   ((_ to_fp 11 53) x1_ack!5894))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5894)
                                   ((_ to_fp 11 53) a_ack!5899)))
                   ((_ to_fp 11 53) #x3fe8fc7574fa6c62))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5899)
                                   ((_ to_fp 11 53) x1_ack!5894)))
                   a!1)))
  (FPCHECK_FINVALID_SQRT a!2 a!2))))

(check-sat)
(exit)
