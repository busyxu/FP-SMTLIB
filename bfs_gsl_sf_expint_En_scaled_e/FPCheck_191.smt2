(declare-fun a_ack!529 () (_ BitVec 32))
(declare-fun b_ack!528 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!529 #x00000000)))
(assert (not (= #x00000000 a_ack!529)))
(assert (= #x00000001 a_ack!529))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!528) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!528) ((_ to_fp 11 53) #xc024000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!528) ((_ to_fp 11 53) #xc010000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!528) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!528))
                           ((_ to_fp 11 53) #x4014000000000000))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4000000000000000) a!1)
    #xbff0000000000000)))

(check-sat)
(exit)
