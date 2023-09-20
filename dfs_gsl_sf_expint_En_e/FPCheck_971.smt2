(declare-fun a_ack!2668 () (_ BitVec 32))
(declare-fun b_ack!2667 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!2668 #x00000000)))
(assert (not (= #x00000000 a_ack!2668)))
(assert (= #x00000001 a_ack!2668))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2667) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2667) ((_ to_fp 11 53) #xc024000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!2667) ((_ to_fp 11 53) #xc010000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.add roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4044000000000000)
                  ((_ to_fp 11 53) b_ack!2667))
          ((_ to_fp 11 53) #x401c000000000000))
  #x4008000000000000))

(check-sat)
(exit)
