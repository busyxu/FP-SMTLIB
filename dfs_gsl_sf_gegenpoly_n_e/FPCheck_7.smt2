(declare-fun b_ack!40 () (_ BitVec 64))
(declare-fun a_ack!42 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun c_ack!41 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!40) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!42 #x00000000)))
(assert (not (= #x00000000 a_ack!42)))
(assert (= #x00000001 a_ack!42))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!40) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) b_ack!40))
  c_ack!41))

(check-sat)
(exit)
