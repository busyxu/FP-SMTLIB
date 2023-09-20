(declare-fun a_ack!229 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!229)
                    ((_ to_fp 11 53) a_ack!229))
            ((_ to_fp 11 53) #x3f9932cbb7f0cf30))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!229) ((_ to_fp 11 53) #x4020000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!229))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!229))
             ((_ to_fp 11 53) #x4014000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!229))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!229))
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x4002158ffa22f7a8))

(check-sat)
(exit)
