(declare-fun x_ack!60 () (_ BitVec 64))
(declare-fun a_ack!59 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!60) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!60) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!60) ((_ to_fp 11 53) #x3fa999999999999a)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!59)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!59)
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x3ffbc8a35d2b114e))

(check-sat)
(exit)
