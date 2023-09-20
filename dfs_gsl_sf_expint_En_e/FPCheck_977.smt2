(declare-fun a_ack!2686 () (_ BitVec 32))
(declare-fun b_ack!2685 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!2686 #x00000000)))
(assert (not (= #x00000000 a_ack!2686)))
(assert (= #x00000001 a_ack!2686))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2685) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2685) ((_ to_fp 11 53) #xc024000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!2685) ((_ to_fp 11 53) #xc010000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4044000000000000)
                                   ((_ to_fp 11 53) b_ack!2685))
                           ((_ to_fp 11 53) #x401c000000000000))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4000000000000000) a!1)
    #xbff0000000000000)))

(check-sat)
(exit)
