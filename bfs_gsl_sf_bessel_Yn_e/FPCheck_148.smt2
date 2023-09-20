(declare-fun a_ack!529 () (_ BitVec 32))
(declare-fun b_ack!528 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!529 #x00000000)))
(assert (not (= #x00000000 a_ack!529)))
(assert (not (= #x00000001 a_ack!529)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!528) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!528) ((_ to_fp 11 53) #x4014000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fd0000000000000)
          ((_ to_fp 11 53) b_ack!528))
  b_ack!528))

(check-sat)
(exit)
