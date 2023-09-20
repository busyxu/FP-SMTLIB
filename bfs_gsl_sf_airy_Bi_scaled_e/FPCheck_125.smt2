(declare-fun a_ack!365 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!365) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!365) ((_ to_fp 11 53) #xc000000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x4030000000000000
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!365)
                  ((_ to_fp 11 53) a_ack!365))
          ((_ to_fp 11 53) a_ack!365))))

(check-sat)
(exit)
