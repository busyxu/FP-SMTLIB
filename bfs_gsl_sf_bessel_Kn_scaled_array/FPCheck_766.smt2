(declare-fun a_ack!3001 () (_ BitVec 32))
(declare-fun b_ack!2999 () (_ BitVec 32))
(declare-fun c_ack!3000 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!3001 #x00000000)))
(assert (not (bvslt b_ack!2999 a_ack!3001)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3000) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!2999))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3000) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!3000) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!3000) ((_ to_fp 11 53) #x4020000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x4030000000000000)
          ((_ to_fp 11 53) c_ack!3000))
  #x4022000000000000))

(check-sat)
(exit)
