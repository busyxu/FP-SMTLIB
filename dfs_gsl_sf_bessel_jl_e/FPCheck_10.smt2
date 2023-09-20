(declare-fun a_ack!41 () (_ BitVec 32))
(declare-fun b_ack!40 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!41 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!40) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!40) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!41))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!40)) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!40)
          ((_ to_fp 11 53) b_ack!40))
  #x3de6124613a86d09))

(check-sat)
(exit)
