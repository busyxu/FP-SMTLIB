(declare-fun a_ack!243 () (_ BitVec 32))
(declare-fun b_ack!242 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!243 #x00000000)))
(assert (= #x00000000 a_ack!243))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!242) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!242) ((_ to_fp 11 53) #x4010000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!242))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3fc0000000000000)
                  ((_ to_fp 11 53) b_ack!242))
          ((_ to_fp 11 53) b_ack!242))
  #x3ff0000000000000))

(check-sat)
(exit)
