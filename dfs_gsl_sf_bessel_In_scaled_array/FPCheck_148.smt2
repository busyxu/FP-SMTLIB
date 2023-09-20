(declare-fun a_ack!632 () (_ BitVec 32))
(declare-fun b_ack!630 () (_ BitVec 32))
(declare-fun c_ack!631 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!630 a_ack!632)))
(assert (not (bvslt a_ack!632 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!631) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!630))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!631))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.abs ((_ to_fp 11 53) c_ack!631)))
  (fp.abs ((_ to_fp 11 53) c_ack!631))))

(check-sat)
(exit)
