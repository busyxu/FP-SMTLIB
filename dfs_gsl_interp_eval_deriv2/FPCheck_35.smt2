(declare-fun xx_ack!273 () (_ BitVec 64))
(declare-fun x0_ack!274 () (_ BitVec 64))
(declare-fun x1_ack!271 () (_ BitVec 64))
(declare-fun x2_ack!272 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!273) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!273) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!273) ((_ to_fp 11 53) x0_ack!274))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!273) ((_ to_fp 11 53) x1_ack!271)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!271) ((_ to_fp 11 53) xx_ack!273))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!272)
               ((_ to_fp 11 53) x1_ack!271))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!272)
                                   ((_ to_fp 11 53) x1_ack!271))))))
  (FPCHECK_FMUL_ACCURACY #x4018000000000000 a!1)))

(check-sat)
(exit)
