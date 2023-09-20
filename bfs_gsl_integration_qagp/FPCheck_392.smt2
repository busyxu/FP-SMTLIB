(declare-fun limit_ack!5928 () (_ BitVec 64))
(declare-fun epsabs_ack!5933 () (_ BitVec 64))
(declare-fun a_ack!5934 () (_ BitVec 64))
(declare-fun x1_ack!5929 () (_ BitVec 64))
(declare-fun x2_ack!5930 () (_ BitVec 64))
(declare-fun x3_ack!5931 () (_ BitVec 64))
(declare-fun b_ack!5932 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!5928)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5933)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5929) ((_ to_fp 11 53) a_ack!5934))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5930) ((_ to_fp 11 53) x1_ack!5929))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5931) ((_ to_fp 11 53) x2_ack!5930))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5932) ((_ to_fp 11 53) x3_ack!5931))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5934)
                                   ((_ to_fp 11 53) x1_ack!5929))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5929)
                                   ((_ to_fp 11 53) a_ack!5934)))
                   ((_ to_fp 11 53) #x3fe8fc7574fa6c62))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5934)
                                   ((_ to_fp 11 53) x1_ack!5929)))
                   a!1)))
  (FPCHECK_FDIV_ACCURACY
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)
