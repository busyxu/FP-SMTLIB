(declare-fun a_ack!289 () (_ BitVec 32))
(declare-fun b_ack!288 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (bvslt a_ack!289 #x000003e8))
(assert (not (bvslt a_ack!289 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!288) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!289)))
(assert (= #x00000001 a_ack!289))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #xbfe0000000000000)
          ((_ to_fp 11 53) b_ack!288))
  b_ack!288))

(check-sat)
(exit)
