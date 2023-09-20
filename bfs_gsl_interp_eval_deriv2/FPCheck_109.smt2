(declare-fun xx_ack!731 () (_ BitVec 64))
(declare-fun x0_ack!732 () (_ BitVec 64))
(declare-fun x1_ack!730 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!731) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!731) ((_ to_fp 11 53) #xabababababababab))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!731) ((_ to_fp 11 53) x0_ack!732)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!730)
               ((_ to_fp 11 53) x0_ack!732))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!731)
                       ((_ to_fp 11 53) x0_ack!732))
               ((_ to_fp 11 53) x0_ack!732))
       ((_ to_fp 11 53) xx_ack!731)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) xx_ack!731)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!731)
                       ((_ to_fp 11 53) x0_ack!732)))
       ((_ to_fp 11 53) x0_ack!732)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!730)
                                   ((_ to_fp 11 53) x0_ack!732))))))
  (FPCHECK_FMUL_UNDERFLOW #x4018000000000000 a!1)))

(check-sat)
(exit)
