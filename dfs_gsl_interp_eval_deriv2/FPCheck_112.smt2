(declare-fun xx_ack!739 () (_ BitVec 64))
(declare-fun x0_ack!740 () (_ BitVec 64))
(declare-fun x1_ack!738 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!739) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!739) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!739) ((_ to_fp 11 53) x0_ack!740))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!739) ((_ to_fp 11 53) x1_ack!738))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!738)
               ((_ to_fp 11 53) x0_ack!740))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!738)
                                   ((_ to_fp 11 53) x0_ack!740))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4018000000000000) a!1)
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) xx_ack!739)
            ((_ to_fp 11 53) x0_ack!740)))))

(check-sat)
(exit)
