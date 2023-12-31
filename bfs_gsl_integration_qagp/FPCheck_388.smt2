(declare-fun limit_ack!5879 () (_ BitVec 64))
(declare-fun epsabs_ack!5884 () (_ BitVec 64))
(declare-fun a_ack!5885 () (_ BitVec 64))
(declare-fun x1_ack!5880 () (_ BitVec 64))
(declare-fun x2_ack!5881 () (_ BitVec 64))
(declare-fun x3_ack!5882 () (_ BitVec 64))
(declare-fun b_ack!5883 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5879)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5884)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5880) ((_ to_fp 11 53) a_ack!5885))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5881) ((_ to_fp 11 53) x1_ack!5880))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5882) ((_ to_fp 11 53) x2_ack!5881))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5883) ((_ to_fp 11 53) x3_ack!5882))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5885)
                                   ((_ to_fp 11 53) x1_ack!5880))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5880)
                                   ((_ to_fp 11 53) a_ack!5885)))
                   ((_ to_fp 11 53) #x3fe8fc7574fa6c62))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5885)
                                   ((_ to_fp 11 53) x1_ack!5880)))
                   a!1)))
  (FPCHECK_FINVALID_LOG
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)))))

(check-sat)
(exit)
