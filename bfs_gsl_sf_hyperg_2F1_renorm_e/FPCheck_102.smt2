(declare-fun a_ack!407 () (_ BitVec 64))
(declare-fun b_ack!405 () (_ BitVec 64))
(declare-fun c_ack!406 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!407) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!405) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!406) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!406)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!406)
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x40142eb8f3a779b9))

(check-sat)
(exit)
