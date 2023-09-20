(declare-fun a_ack!227 () (_ BitVec 32))
(declare-fun b_ack!226 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!227 #x00000000)))
(assert (= #x00000000 a_ack!227))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!226) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!226) ((_ to_fp 11 53) #x4010000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!226))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fc0000000000000)
          ((_ to_fp 11 53) b_ack!226))
  b_ack!226))

(check-sat)
(exit)
