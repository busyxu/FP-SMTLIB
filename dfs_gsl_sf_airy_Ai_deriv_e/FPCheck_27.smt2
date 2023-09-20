(declare-fun a_ack!46 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!46) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!46) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!46)
                       ((_ to_fp 11 53) a_ack!46))
               ((_ to_fp 11 53) a_ack!46))
       ((_ to_fp 11 53) #x41313a9357d08d7f)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!46) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!46) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!46) ((_ to_fp 11 53) #x4010000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  #x4030000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!46)
          ((_ to_fp 11 53) #x40158d76ff832d32))))

(check-sat)
(exit)
