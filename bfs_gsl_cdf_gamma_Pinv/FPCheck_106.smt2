(declare-fun x_ack!322 () (_ BitVec 64))
(declare-fun a_ack!321 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!322) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!322) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!322) ((_ to_fp 11 53) #x3fa999999999999a))))
(assert (fp.gt ((_ to_fp 11 53) x_ack!322) ((_ to_fp 11 53) #x3fee666666666666)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!321)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!321)
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x3ff3e48f2c0326b5))

(check-sat)
(exit)
