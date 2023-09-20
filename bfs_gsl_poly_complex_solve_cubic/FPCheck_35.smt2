(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!85 () (_ BitVec 64))
(declare-fun a_ack!86 () (_ BitVec 64))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!86)
                  ((_ to_fp 11 53) a_ack!86))
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4008000000000000)
                  ((_ to_fp 11 53) b_ack!85)))
  #x4022000000000000))

(check-sat)
(exit)
