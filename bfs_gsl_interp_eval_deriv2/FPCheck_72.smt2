(declare-fun xx_ack!507 () (_ BitVec 64))
(declare-fun x0_ack!508 () (_ BitVec 64))
(declare-fun x1_ack!506 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!507) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!507) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!507) ((_ to_fp 11 53) x0_ack!508))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!507) ((_ to_fp 11 53) x1_ack!506))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!506)
               ((_ to_fp 11 53) x0_ack!508))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!506)
                                   ((_ to_fp 11 53) x0_ack!508))))))
  (FPCHECK_FMUL_OVERFLOW #x4018000000000000 a!1)))

(check-sat)
(exit)
