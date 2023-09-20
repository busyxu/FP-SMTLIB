(declare-fun a_ack!35 () (_ BitVec 32))
(declare-fun b_ack!34 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!35 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!34) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!34) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!35))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!34)) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!34)
          ((_ to_fp 11 53) b_ack!34))
  #x3de6124613a86d09))

(check-sat)
(exit)
