(declare-fun a_ack!35 () (_ BitVec 32))
(declare-fun b_ack!34 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!35 #x00000000)))
(assert (= #x00000000 a_ack!35))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!34) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  (CF_exp (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) b_ack!34)))
  b_ack!34))

(check-sat)
(exit)
