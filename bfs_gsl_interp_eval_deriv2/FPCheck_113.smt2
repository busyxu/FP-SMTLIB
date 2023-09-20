(declare-fun xx_ack!743 () (_ BitVec 64))
(declare-fun x0_ack!744 () (_ BitVec 64))
(declare-fun x1_ack!742 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!743) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!743) ((_ to_fp 11 53) #xabababababababab))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!743) ((_ to_fp 11 53) x0_ack!744)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!742)
               ((_ to_fp 11 53) x0_ack!744))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!743)
                       ((_ to_fp 11 53) x0_ack!744))
               ((_ to_fp 11 53) x0_ack!744))
       ((_ to_fp 11 53) xx_ack!743)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) xx_ack!743)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!743)
                       ((_ to_fp 11 53) x0_ack!744)))
       ((_ to_fp 11 53) x0_ack!744)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!742)
                                   ((_ to_fp 11 53) x0_ack!744))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4018000000000000) a!1)
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) xx_ack!743)
            ((_ to_fp 11 53) x0_ack!744)))))

(check-sat)
(exit)
