(declare-fun a_ack!24 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!24) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!24) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!24)
                       ((_ to_fp 11 53) a_ack!24))
               ((_ to_fp 11 53) a_ack!24))
       ((_ to_fp 11 53) #x41313a9357d08d7f)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #xc000000000000000)
          ((_ to_fp 11 53) a_ack!24))
  #x3ff6a09e667f3bcd))

(check-sat)
(exit)
