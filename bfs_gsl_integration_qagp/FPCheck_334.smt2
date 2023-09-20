(declare-fun limit_ack!5039 () (_ BitVec 64))
(declare-fun epsabs_ack!5044 () (_ BitVec 64))
(declare-fun a_ack!5045 () (_ BitVec 64))
(declare-fun x1_ack!5040 () (_ BitVec 64))
(declare-fun x2_ack!5041 () (_ BitVec 64))
(declare-fun x3_ack!5042 () (_ BitVec 64))
(declare-fun b_ack!5043 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5039)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5044)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5040) ((_ to_fp 11 53) a_ack!5045))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5041) ((_ to_fp 11 53) x1_ack!5040))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5042) ((_ to_fp 11 53) x2_ack!5041))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5043) ((_ to_fp 11 53) x3_ack!5042))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5045)
                                   ((_ to_fp 11 53) x1_ack!5040))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5040)
                                   ((_ to_fp 11 53) a_ack!5045)))
                   ((_ to_fp 11 53) #x3fedc3d9a4b011c6))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5045)
                                   ((_ to_fp 11 53) x1_ack!5040)))
                   a!1)))
  (FPCHECK_FINVALID_LOG
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)))))

(check-sat)
(exit)
