(declare-fun a_ack!179 () (_ BitVec 32))
(declare-fun b_ack!178 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!179 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!178) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!179)))
(assert (= #x00000001 a_ack!179))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!178) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!178) ((_ to_fp 11 53) #x1ff0000000000001))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!178) ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!178)
          ((_ to_fp 11 53) b_ack!178))
  #xbe58a86a49f629d1))

(check-sat)
(exit)
